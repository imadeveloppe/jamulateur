///////////******* Declaration des fonctions *******//////////////
    
    function getInfoAddress (result) {  
            var addr = {
                street_number : "",
                route : "",
                city : "",
                state : "",
                zipcode : "",
                country : ""
            };  

            
            if (result) {
                for (var ii = 0; ii < result.address_components.length; ii++){
                    var street_number = route = street = city = state = zipcode = country = formatted_address = '';
                    var types = result.address_components[ii].types.join(",");

                    if (types == "street_number"){
                        addr.street_number = result.address_components[ii].long_name;
                    }

                    if (types == "route" || types == "point_of_interest,establishment"){
                        addr.route = result.address_components[ii].long_name; 
                    }

                    if (types == "sublocality,political" || types == "locality,political" || types == "neighborhood,political" || types == "administrative_area_level_1,political" || types == "administrative_area_level_2,political" || types == "administrative_area_level_3,political") {
                        addr.city = (addr.city == '') ? result.address_components[ii].long_name : addr.city;
                    }

                    if (types == "administrative_area_level_1,political"){
                        addr.state = result.address_components[ii].short_name;
                    }

                    if (types == "postal_code" || types == "postal_code_prefix,postal_code"){
                        addr.zipcode = result.address_components[ii].long_name;
                    }

                    if (types == "country,political"){
                        addr.country = result.address_components[ii].long_name;
                        addr.codeCountry = result.address_components[ii].short_name;
                    } 

                    addr.lat = result.geometry.location.lat();
                    addr.lng = result.geometry.location.lng();
                }
                addr.success = true; 
                return addr;
            } else {
                return {success:false};
            }  
    }

    function getLatitudeLongitude(address, typeAddress) {

       return new Promise(function (resolve, reject){
            address = address || 'Ferrol, Galicia, Spain';
            // Initialize the Geocoder
            geocoder = new google.maps.Geocoder();
            
            if (geocoder) {
                geocoder.geocode({
                    'address': address
                }, function (results, status) { 
                    if (status == google.maps.GeocoderStatus.OK) {  
                        
                        for (var i=0; i < results[0].address_components.length; i++) {
                            for (var j=0; j < results[0].address_components[i].types.length; j++) {
                                
                                if( typeAddress == 'destination' ){

                                    if (results[0].address_components[i].types[j] == "country") { 

                                      country = results[0].address_components[i]; 
                                      console.log(results)
                                      if( country.long_name == "France" ){
                                            var hasZipCode = 0;
                                            isVille = false
                                            for (var k=0; k < results[0].address_components.length; k++) {
                                                var types = results[0].address_components[k].types.join(",");
                                                if (!isVille && (types == "sublocality,political" || types == "locality,political" || types == "neighborhood,political" || types == "administrative_area_level_1,political" || types == "administrative_area_level_2,political" || types == "administrative_area_level_3,political")) {
                                                    $('#formDevis  [name=ville]').val(results[0].address_components[k].long_name); 
                                                    isVille = true;
                                                }
                                                if (types == "postal_code" && hasZipCode == 0) {  
                                                    hasZipCode = results[0].address_components[k].long_name;
                                                }
                                            }
                                            setTimeout(function () {
                                                if(hasZipCode == 0){
                                                    $('#formDevis [name=cp]').val( '' ).valid();
                                                    $('#formDevis [name=ville]').val( '' ).valid();
                                                    $('#error').modal('show').find('center p').text("L'adresse que vous avez saisie est invalide")
                                                    $('[name=distance]').val( "-1" )
                                                    reject();
                                                }
                                            })
                                            resolve( results[0].geometry.location )
                                      }else{
                                        $('#formDevis [name=cp]').val( '' ).valid();
                                        $('#formDevis [name=ville]').val( '' ).valid();
                                        $('#error').modal('show').find('center p').text("L'adresse que vous avez saisie est invalide")
                                        $('[name=distance]').val( "-1" )
                                        $('[name=devis]').removeClass('loading').val(''); 
                                        reject();
                                      }
                                    } 
                                }else{
                                    resolve( results[0].geometry.location )
                                }
                            }
                            

                        }

                        
                    }else{ 
                        $('[name=distance]').val( "-1" )
                        $('[name=devis]').removeClass('loading').val(''); 
                        $('#formDevis  [name=cp]').val(''); 
                        $('#formDevis  [name=ville]').val(''); 
                        $('#error').modal('show').find('center p').text("La géolocalisation ne peut pas être effectué pour le moment, veillez réesayer"); 
                    }
                });
            }else{
                console.log("Error geocoder")
                reject()
            }
        })
    }

    function deg2rad(deg) {
      return deg * (Math.PI/180)
    } 
    function calcDistanceFromTwoAddresses (origin, destination) { 

        return new Promise(function (resolve, reject){
            getLatitudeLongitude(origin, "origin").then(function ( location1 ) {
                getLatitudeLongitude(destination, "destination").then(function ( location2 ) {
                    if( location1 && location2){
                        var lat1 = location1.lat();
                        var lon1 = location1.lng();

                        var lat2 = location2.lat();
                        var lon2 = location2.lng();

                        var R = 6371; // Radius of the earth in km
                          var dLat = deg2rad(lat2-lat1);  // deg2rad below
                          var dLon = deg2rad(lon2-lon1); 
                          var a = 
                            Math.sin(dLat/2) * Math.sin(dLat/2) +
                            Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
                            Math.sin(dLon/2) * Math.sin(dLon/2); 
                          var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
                          var d = R * c; // Distance in km
                          resolve( parseInt(d) );
                    }else{ 
                        reject()
                    }
                })
            })
        }) 
    }

    function DatesDiffrence(date1, date2) {
        var array1 = date1.split('-');
        var array2 = date2.split('-');
        var date1 = new Date( array1[1]+"/"+array1[0]+"/"+array1[2] );
        var date2 = new Date(  array2[1]+"/"+array2[0]+"/"+array2[2] );
        var timeDiff = date2.getTime() - date1.getTime(); 
        var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)); 

        return diffDays;
    }
    function number_format (number, decimals, dec_point, thousands_sep) {
        // Strip all characters but numerical ones.
        number = (number + '').replace(/[^0-9+\-Ee.]/g, '');
        var n = !isFinite(+number) ? 0 : +number,
            prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
            sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
            dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
            s = '',
            toFixedFix = function (n, prec) {
                var k = Math.pow(10, prec);
                return '' + Math.round(n * k) / k;
            };
        // Fix for IE parseFloat(0.55).toFixed(0) = 0;
        s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
        if (s[0].length > 3) {
            s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
        }
        if ((s[1] || '').length < prec) {
            s[1] = s[1] || '';
            s[1] += new Array(prec - s[1].length + 1).join('0');
        }
        return s.join(dec);
    }
    function getDate(day) {
        var currentDate = new Date();
        currentDate.setDate(currentDate.getDate() + day)
        return currentDate;
    }

    //////////////Get Data Prices///////////////////
    var GlobalData; 
    $.getJSON('js/data.json', function (data) {
      GlobalData = data;
    })
    /////////////////////////////////////////////

    function calculate() {  
  
                if( !$("#formDevis [name=cp]").valid() ) return false;
                if( !$("#formDevis [name=ville]").valid() ) return false;

                var distance = $('[name=distance]').val()
                if( parseInt(distance) < 0 ) {
                    $('#error').modal('show').find('center p').text('Adresse invalide ou mauvais code postal')
                    return false;
                } 

                if( !$("#formDevis [name=dateDebut]").valid() ) return false; 
                if( !$("#formDevis [name=dateFin]").valid() ) return false; 

                var data = {
                    depotAddress: $('[name=depotAddress]').val(),
                    rue         : $('#formDevis  [name=rue]').val(),
                    cp          : $('#formDevis  [name=cp]').val(),
                    ville       : $('#formDevis  [name=ville]').val(),
                    dateDebut   : $('[name=dateDebut]').val(),
                    dateFin     : $('[name=dateFin]').val(),
                    visuel      : $('[name=index-images-animees]').val(),
                    son         : $('[name=index-son]').val(),
                    nbrBoucles  : parseInt( $('[name=nbrBoucles]').val() ),
                    options     : ($('[name=index-option]').val() != '') ? $('[name=index-option]').val().split(',') : []
                }    
                if( interval ) return false; 
                var totalDevis = 0;   
 
                $('[name=devis]').removeClass('loading'); 
                
                var nbrJour = DatesDiffrence( data.dateDebut, data.dateFin );  

                ///Required Price
                if( nbrJour <= 90 ){
                    totalDevis += GlobalData.JamMobile[ nbrJour ]; 
                    totalDevis += GlobalData.JamSon[ nbrJour ]; 
                }else{
                    totalDevis += GlobalData.JamMobile[ 90 ]; 
                    totalDevis += GlobalData.JamSon[ 90 ]; 
                } 

                
                ///IMAGES ANIMÉES
                totalDevis += GlobalData.visuel[ data.visuel ] * data.nbrBoucles ;

                ///SON
                totalDevis += GlobalData.son[ data.son ] * data.nbrBoucles ;
                

                /// OPTIONS
                $.each( data.options, function( index, option ){
                     totalDevis += GlobalData.options[ option ]
                });

                // Coût d’hébergement - restauration d’une journée d’intervenant image
                 
                var priceHebergementImage = GlobalData.autres.priceHebergementImage; 
                totalDevis += (priceHebergementImage * 2) * (nbrJour + 2);

                // Coût d’hébergement - restauration d’une journée d’intervenant son
                if( GlobalData.son[ data.son ] > 0 ){
                    var priceHebergementSon = GlobalData.autres.priceHebergementSon;
                    totalDevis += priceHebergementSon * (nbrJour + 2);
                }


                // Coût de deplacement image 
                var priceDeplacementImage = GlobalData.autres.priceDeplacementImage; 
                totalDevis += priceDeplacementImage * distance;

                // Coût de deplacement son
                if( GlobalData.son[ data.son ] > 0 ){
                    var priceDeplacementSon = GlobalData.autres.priceDeplacementSon;
                    totalDevis += priceDeplacementSon * distance;
                }

                

                setTimeout(function () {

                    /// if reservation Before 6 months
                    var now = new Date(); 
                    var nbrJourFromNow = DatesDiffrence( now.getDate()+"-"+ (now.getMonth()+1) +"-"+now.getFullYear() , data.dateDebut) 
                    if( nbrJourFromNow >= (30*6) ){
                        totalDevis = totalDevis - (totalDevis * 10) / 100;
                    }
                    ///////////////////////////////////
                    console.log("Finish")
                    $('[name=devis]').val( number_format(totalDevis, 2, ',',' ') )
                })  
                 

                        

                
        
    } 

    ObjectSize = function(obj) {
        var size = 0, key;
        for (key in obj) {
            if (obj.hasOwnProperty(key)) size++;
        }
        return size;
    };

    function getDistance(argument) {
        $('[name=devis]').addClass('loading');
        var data = {
            depotAddress: $('[name=depotAddress]').val(),
            rue         : $('#formDevis [name=rue]').val(),
            cp          : $('#formDevis [name=cp]').val(),
            ville       : $('#formDevis [name=ville]').val(), 
        } 
 
        calcDistanceFromTwoAddresses( data.depotAddress, ", "+data.cp +", "+data.ville ).then(function ( distance ) {

            console.log("distance", distance);
            $('[name=devis]').removeClass('loading');
            if( distance >= 0){ 
                $('[name=distance]').val( distance )
                setTimeout(function () {
                     interval = false;
                    calculate();
                })
            }
        }) 
    }

    function addDevis() {
 
        $('.loader .percent').show() 
        $('.loader').fadeIn() 

 
        var formData = new FormData();

        formData.append("distance"      , $('#formDevis [name=distance]').val() );

        formData.append("type"          , $('#formDevis [name=type]').val() ); 
        formData.append("lieu"          , $('#formDevis [name=lieu]').val() ); 
        formData.append("rueEvent"      , $('#formDevis [name=rue]').val() ); 
        formData.append("cpEvent"       , $('#formDevis [name=cp]').val() ); 
        formData.append("villeEvent"    , $('#formDevis [name=ville]').val() ); 
        formData.append("largeur"       , $('#formDevis [name=rangeL]').val() ); 
        formData.append("hauteur"       , $('#formDevis [name=rangeH]').val() ); 
        formData.append("dateDebut"     , $('#formDevis [name=dateDebut]').val() ); 
        formData.append("dateFin"       , $('#formDevis [name=dateFin]').val() ); 
        formData.append("visuel"        , $('#formDevis [name=index-images-animees]').val() ); 
        formData.append("nbrBoucles"    , $('#formDevis [name=nbrBoucles]').val() ); 
        formData.append("son"           , $('#formDevis [name=index-son]').val() ); 
        formData.append("options"       , $('#formDevis [name=index-option]').val() ); 
        formData.append("email"         , $('#SendDevis [name=email]').val() ); 
        formData.append("tel"           , $('#SendDevis [name=tel]').val() ); 
        formData.append("societe"       , $('#SendDevis [name=societe]').val() ); 
        formData.append("fname"         , $('#SendDevis [name=fname]').val() ); 
        formData.append("lname"         , $('#SendDevis [name=lname]').val() ); 
        formData.append("address1"      , $('#SendDevis [name=address1]').val() ); 
        formData.append("address2"      , $('#SendDevis [name=address2]').val() ); 
        formData.append("cp"            , $('#SendDevis [name=cp]').val() ); 
        formData.append("ville"         , $('#SendDevis [name=ville]').val() ); 

        // HTML file input, chosen by user   
        $.each(filesInputElement, function(index, file){
            formData.append(index, file);
        })  

        var request = new XMLHttpRequest();
        request.open("POST", "inc/addDevis.php");
        request.send(formData);

        request.upload.onprogress =  function(oEvent){ 
            if (oEvent.lengthComputable) {
                var percentComplete = parseInt((oEvent.loaded / oEvent.total)*100);
                $('.loader .percent span').text( percentComplete ) 
            }
        } 
        request.addEventListener("load", function(evt){  
            $('.loader').fadeOut()
            // if( result > 0  ){
                ////////// success /////////////
                $('#demandeDevis').modal('hide');
                $('#sent #email').text( $('#demandeDevis [name=email]').val() );
                $('#sent').modal('show');

                $("form").get(0).reset();
                $("form").get(1).reset();
                $('.filesPreview').html('');
                filesInputElement = {};

                jcf.destroyAll();
                setTimeout(function(){
                    jcf.replaceAll();
                })
                //////// End success ///////////
            // } 

        }, false); 
        
         
    }
    



////////////******* Fin Déclaration  *******//////////////















///////////******* Les evenement Jquery *******//////////////
var filesInputElement = {};
var interval = false;
(function ($) { 
    setTimeout(function () { 
        interval = false;
    })
    // $('#demandeDevis').modal('show');

    $('[name=type]').change(function () {
        var self = $(this); 
        setTimeout(function () {
           if( self.valid() ){
                self.parent().removeClass('error');
           } 
        })
    })

    var clickButton = 1;
    $('.table.images-animees .img-button').click(function (event) {
        event.preventDefault()

         


        var dataIndex = $(this).attr('data-index');
        var TextOption = $(this).parent().find('p').text();

        $(this).parents('.table').find('.img-button').removeClass('active');
        $(this).addClass('active');
        $(this).parents('.table').find('.inputText').val( TextOption )
        $(this).parents('.table').find('.inputVal').val( dataIndex )

        $('p.images-animees-ml').removeClass('active').parent().find('.'+dataIndex).addClass('active');

        $('.table.boucles .customLabel span.titleVisuel').text( TextOption );

        if( dataIndex == 'creationOriginale' ){

            $('input[name=nbrBouclesInput]').val( 5 )
            $('select[name=nbrBouclesSelect]').val( 1 )

            $('.table.boucles .customLabel .titleCreationOriginal').show()
            $('.table.boucles .customLabel .titleDefault').hide()
            setTimeout(function () {
                $('[name=nbrBoucles]').val(5)
                interval = false;
                calculate();
            })
            $('[name=nbrBoucles]').attr('min', 5).attr('max', 50).attr('step', 5) 
            $('img.graduations_1_10').hide()
            $('img.graduations_5_50').show() 
            $('[name=nbrBouclesInput]').show() 
            $('.nbrBouclesView .jcf-select').hide()  

        }else if( dataIndex == 'pretJammer' ){

            $('input[name=nbrBouclesInput]').val( 1 )
            $('select[name=nbrBouclesSelect]').val( 1 )

            $('.table.boucles .customLabel .titleCreationOriginal').hide()
            $('.table.boucles .customLabel .titleDefault').show()
            setTimeout(function () { 
                $('[name=nbrBoucles]').val(1) 
                interval = false;
                calculate();
            })
            $('[name=nbrBoucles]').attr('min', 1).attr('max', 10).attr('step', 1)
            $('img.graduations_1_10').show()
            $('img.graduations_5_50').hide() 
            $('[name=nbrBouclesInput]').hide()
            $('.nbrBouclesView .jcf-select').show() 

        }else if( dataIndex == 'performanceArt' ){

            $('input[name=nbrBouclesInput]').val( 5 )
            $('select[name=nbrBouclesSelect]').val( 5 )

            $('.table.boucles .customLabel .titleCreationOriginal').show()
            $('.table.boucles .customLabel .titleDefault').hide()
            setTimeout(function () {
                $('[name=nbrBoucles]').val(5)
                interval = false;
                calculate();
            })
            $('[name=nbrBoucles]').attr('min', 5).attr('max', 50).attr('step', 5)
            $('img.graduations_1_10').hide()
            $('img.graduations_5_50').show() 
            $('[name=nbrBouclesInput]').show()
            $('.nbrBouclesView .jcf-select').hide() 
        }

        jcf.destroy('input[name=nbrBoucles]');
        setTimeout(function () { 
            jcf.replace('input[name=nbrBoucles]'); 
        }) 

        

        
    })

    $('.table.son .img-button').click(function (event) {
        event.preventDefault()
        var dataIndex = $(this).attr('data-index');
        var TextOption = $(this).parent().find('p').text();

        $(this).parents('.table').find('.img-button').removeClass('active');
        $(this).addClass('active');
        $(this).parents('.table').find('.inputText').val( TextOption )
        $(this).parents('.table').find('.inputVal').val( dataIndex )

        $('p.son-ml').removeClass('active').parent().find('.'+dataIndex).addClass('active');

        interval = false;
        calculate();
    })

    $('.img-off-on').click(function (event) {
        event.preventDefault() 
        $(this).toggleClass('active');
        var data = {
            text: [],
            index: []
        }
        setTimeout(function () {
            if( $('.btnOffOn-1').hasClass('active') ){
                data.text.push( $('.btnOffOn-1').parent().find('span').text() )
                data.index.push( $('.btnOffOn-1').attr('data-index') )
            } 
            if( $('.btnOffOn-2').hasClass('active') ){
                data.text.push( $('.btnOffOn-2').parent().find('span').text() )
                data.index.push( $('.btnOffOn-2').attr('data-index') )
            } 
            if( $('.btnOffOn-3').hasClass('active') ){
                data.text.push( $('.btnOffOn-3').parent().find('span').text() )
                data.index.push( $('.btnOffOn-3').attr('data-index') )
            } 
            if( $('.btnOffOn-4').hasClass('active') ){
                data.text.push( $('.btnOffOn-4').parent().find('span').text() )
                data.index.push( $('.btnOffOn-4').attr('data-index') )
            }
            if( $('.btnOffOn-5').hasClass('active') ){
                data.text.push( $('.btnOffOn-5').parent().find('span').text() )
                data.index.push( $('.btnOffOn-5').attr('data-index') )
            }
            $('[name=option]').val( data.text.join(',') )
            $('[name=index-option]').val( data.index.join(',') ) 

            interval = false;
            calculate();
        })
    }).hover(function () {
        $('.definition-de-option .option.' + $(this).attr('data-index')).show()
        $('.definition-de-option .default').hide()
    }, function () {
        $('.definition-de-option .option').hide()
        $('.definition-de-option .default').show()
    })



    $('.rangeH').change(function () { 
        $('input[name=hauteur]').val( $(this).val() )  
    })
    $('.rangeL').change(function () { 
        $('input[name=largeur]').val( $(this).val() )  
    })

    $('[name=nbrBoucles]').change(function () {    
         console.log($(this).val())
        if( $('input[name=index-images-animees]').val() == 'creationOriginale' ||  $('input[name=index-images-animees]').val() == 'performanceArt' ){

            setTimeout(function () {
                $('input[name=nbrBouclesInput]').val( $('[name=nbrBoucles]').val() )
            })
            
        }else{
            
            $('select[name=nbrBouclesSelect]').val( $('[name=nbrBoucles]').val() )
            jcf.getInstance($('select[name=nbrBouclesSelect]')).refresh()
        } 

        setTimeout(function () {
            interval = false;
            calculate();
        })
        
    }) 

    $('select[name=nbrBouclesSelect]').change(function () {  
        $('input[name=nbrBoucles]').val( $(this).val() )  
        jcf.destroy('input[name=nbrBoucles]');
        setTimeout(function () {
            jcf.replace('input[name=nbrBoucles]');
        }) 
        interval = false;
        calculate();
    })

    $('input[name=nbrBouclesInput]').keyup(function () {

        var val = $(this).val(); 
        // if( val >= 10 && val <= 100  ){

            $(this).val(val)  
            $('input[name=nbrBoucles]').val( val )  
            jcf.destroy('input[name=nbrBoucles]');
            setTimeout(function () {
                jcf.replace('input[name=nbrBoucles]');
            }) 
            interval = false;
            calculate(); 
        // }
        
    })

    $('input[name=nbrBouclesInput]').blur(function () {

        $(this).val( $('input[name=nbrBoucles]').val() )
        
    })


    $('[name=dateDebut], [name=dateFin]').change(function () {
        interval = false;
    })

    $('#open-privacy-policy').click(function () { 
        $('.content-privacy-policy').slideToggle(500); 
    })

    $('#buttonDemandeDevis').click(function () {
 
        if( $("#formDevis").valid() ){

            if( $('[name=devis]').val() == '' ){
                $('#error').modal('show').find('center p').text('Adresse invalide ou mauvais code postal');
                return false
            }

            if( !$('.wrapper [name=dateDebut]').val() ){
                $('.wrapper [name=dateDebut]').addClass('error');
                return false;
            }else{
                $('.wrapper [name=dateDebut]').removeClass('error');
            }
            if( !$('.wrapper [name=dateFin]').val() ){
                $('.wrapper [name=dateFin]').addClass('error');
                return false;
            }else{
                $('.wrapper [name=dateFin]').removeClass('error');
            }

            $('#demandeDevis [name=email]').val( $('.wrapper [name=email]').val() )
            $('#demandeDevis').modal('show');
        } 
    })

    $('#ButtonSendDevis').click(function () { 

        if($("#SendDevis").valid()){
            addDevis(); 
        }
    });

    var MouseDownJcfRangeHandle = false;
    $('form').on('mousedown', '.jcf-range-handle', function(e){ 
        MouseDownJcfRangeHandle = true; 
        interval =  setInterval(function(){ 
                        $('input[name=hauteur]').val( $('[name=rangeH]').val() )
                        $('input[name=largeur]').val( $('[name=rangeL]').val() )
                          
                          

                        if( $('input[name=index-images-animees]').val() == 'creationOriginale' || $('input[name=index-images-animees]').val() == 'performanceArt' ){
                            
                            if( !$("input[name=nbrBouclesInput]").is(":focus")){
                                $('input[name=nbrBouclesInput]').val( $('[name=nbrBoucles]').val() )
                            }

                        }else{
                            
                            $('select[name=nbrBouclesSelect]').val( $('[name=nbrBoucles]').val() )
                            jcf.getInstance($('select[name=nbrBouclesSelect]')).refresh()
                        }  
                     } , 0); 
    })

    $('form').on('mouseenter', '.jcf-range', function(e){  
        if( !MouseDownJcfRangeHandle ){
         $('.jcf-range-handle').mousedown()
        }
    })

    $('form').on('mouseup', '.jcf-range-wrapper', function(e){  
        MouseDownJcfRangeHandle = false;
        setTimeout(function () {
            clearInterval(interval);
            interval = false;
            calculate();
        })
    }) 

    $('form').on('mouseout', '.jcf-range', function(e){  
        if( !MouseDownJcfRangeHandle ){
            setTimeout(function () {
                clearInterval(interval);
                interval = false;
                calculate();
            })
        }
    }) 
    

    $('[type=file]').change(function () {
        var files = document.querySelector("[type=file]").files; 
        $.each(files,function (index, file) { 
            var indexObj = ObjectSize(filesInputElement)
            $('.filesPreview').append('<div>'+file.name+'<span data-index="'+indexObj+'" class="deleteFile">X</span></div>');
            filesInputElement[ indexObj ] = file;
        }) 
    })

    $('.filesPreview').on('click','.deleteFile',function () { 
        var index = $(this).attr('data-index');
        $(this).parent().remove()
        
        files = {};
        var key = 0;
        $.each(filesInputElement, function (i, file) {
            if(index != i){
                files[key] = file;
                key++;
            }
        })  
        setTimeout(function () {
            filesInputElement = files  
            $('.filesPreview').html('');
            var key = 0;
            $.each(filesInputElement,function (index, file) {  
                $('.filesPreview').append('<div>'+file.name+'<span data-index="'+key+'" class="deleteFile">X</span></div>');
                filesInputElement[ key ] = file;
                key++;
            })
        })
    })

    $('#formDevis [name=cp], #formDevis [name=ville]').blur(function () {
        
        setTimeout(function () { 
            if( !$('#formDevis [name=cp], #formDevis [name=ville]').is(':focus') ){
                if( !$("#formDevis [name=cp]").valid() ) return false;
                if( !$("#formDevis [name=ville]").valid() ) return false;   
                getDistance()
            } 
        })
    })



    /// google maps auto complate
    google.maps.event.addDomListener(window, 'load', function () {

        var input = document.getElementById('rue');
        var autocomplete = new google.maps.places.Autocomplete(input, { 
          types: ['address'],
          componentRestrictions: { 
            country: ["fr"] 
          }
        });

        autocomplete.addListener('place_changed', function(  ) {
            var data = getInfoAddress( autocomplete.getPlace() ); 
 
            $('#formDevis [name=rue]').val( data.route )
            $('#formDevis [name=cp]').val( data.zipcode )
            $('#formDevis [name=ville]').val( data.city ) 

            setTimeout(function () { 
                if( !$("#formDevis [name=cp]").valid() ) return false;
                if( !$("#formDevis [name=ville]").valid() ) return false;  
                getDistance()
            })
            
        });
 
    });
 

})(jQuery);
////////////******* Fin Evenement  *******//////////////




////////////******* Validations des formulaires  *******//////////////
(function($,W,D)
{
    var JQUERY4U = {};
 
    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
            //form validation rules
            $("#formDevis").validate({
                rules: {
						
					type:{  
						required: true,  
					},
                    lieu:{  
                        required: true,  
                    },
                    rue:{  
                        required: true,  
                    },
                    cp:{  
                        required: true,  
                        minlength: 5
                    },
                    ville:{  
                        required: true,  
                    }, 
                    dateDebut: {
                      required: true,
                      australianDate: true
                    }, 
                    dateFin: {
                      required: true,
                      australianDate: true
                    },
					email:{  
						required: true,
						email: true
					}

                },   
                invalidHandler: function(form, validator) { 
                    setTimeout(function () {
                        $('.jcf-select').each(function () {
                            if( $(this).find('select').hasClass('error') ){
                                $(this).find('select').parent().addClass('error');
                            }else{
                                $(this).find('select').parent().removeClass('error');
                            }
                        })
                    })
                },
                validHandler: function(form, validator) { 
                    
                }

            });

            $.validator.addMethod(
                "australianDate",
                function(value, element) {
                    // put your own logic here, this is just a (crappy) example
                    return value.match(/^\d\d?\-\d\d?\-\d\d\d\d$/);
                },""
            );
            $.validator.addMethod(
                "phoneNumber",
                function(value, element) {
                    // put your own logic here, this is just a (crappy) example
                    return value.match(/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im);
                },""
            );


            $('#SendDevis').validate({
                rules: {
                    email:{  
                        required: true,
                        email: true
                    },
                    tel:{  
                        required: true,
                        phoneNumber: true, 
                        minlength: 10
                    },
                    societe:{  
                        required: true,  
                    }, 
                    fname:{  
                        required: true,  
                    },
                    lname:{  
                        required: true,  
                    },
                    address1:{  
                        required: true,  
                    }, 
                    cp:{  
                        required: true,  
                        number: true,
                        minlength: 5
                    }, 
                    ville:{  
                        required: true,  
                    } 
                }
            })

        }
    }
 
    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation(); 
        ///////////******* Code Jquery *******//////////////




        ////////////******* Fin Code  *******//////////////
    });
 
})(jQuery, window, document);

////////////******* Fin validations  *******//////////////