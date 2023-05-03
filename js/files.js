
function _(el) {
    return document.getElementById(el);
  }
  
  function uploadFile(doc,idUsr) {
    var file = _("file"+doc).files[0];
    var documento = doc;
    var idUsuario = idUsr;
    // alert(file.name+" | "+file.size+" | "+file.type);
    var formdata = new FormData();
    // variable del name file
    formdata.append("file", file);
    // variables post
    formdata.append("documento", documento);
    formdata.append("idUsuario", idUsuario);
    var ajax = new XMLHttpRequest();
    ajax.upload.addEventListener("progress", progressHandler, false);
    ajax.addEventListener("load", completeHandler, false);
    ajax.addEventListener("error", errorHandler, false);
    ajax.addEventListener("abort", abortHandler, false);
    ajax.open("POST", "prcd/upload_file.php"); 
    
    // http://www.developphp.com/video/JavaScript/File-Upload-Progress-Bar-Meter-Tutorial-Ajax-PHP
    //use file_upload_parser.php from above url

    //ARCHIVO CON EL PROCEDIMIENTO PARA MOVER EL DOCUMENTO AL SERVIDOR
    ajax.send(formdata);
    

    function progressHandler(event) {

        _("loaded_n_total"+doc).innerHTML = "Cargado " + event.loaded + " bytes de " + event.total;
        var percent = (event.loaded / event.total) * 100;
        _("progressBar"+doc).value = Math.round(percent);
        _("status"+doc).innerHTML = Math.round(percent) + "% subido... espere un momento";
      }
      
      function completeHandler(event) {
        _("status"+doc).innerHTML = event.target.responseText;
        _("progressBar"+doc).value = 0; //wil clear progress bar after successful upload
          _("file"+doc).style.display='none';
          _("progressBar"+doc).style.display='none';
      }
      
      function errorHandler(event) {
        _("status"+doc).innerHTML = "Fallo en la subida";
      }
      
      function abortHandler(event) {
        _("status"+doc).innerHTML = "Fallo en la subida";
      }
    
  }
function _(el2) {
    return document.getElementById(el2);
  }
  
  function uploadFileEditar(doc,idUsr) {
    var fileEditar = _("fileEditar"+doc).files[0];
    var documento = doc;
    var idUsuario = idUsr;
    // alert(file.name+" | "+file.size+" | "+file.type);
    var formdataEdit = new FormData();
    // variable del name file
    formdataEdit.append("fileEditar", fileEditar);
    // variables post
    formdataEdit.append("documento", documento);
    formdataEdit.append("idUsuario", idUsuario);
    var ajax = new XMLHttpRequest();
    ajax.upload.addEventListener("progress", progressHandlerEditar, false);
    ajax.addEventListener("load", completeHandlerEditar, false);
    ajax.addEventListener("error", errorHandlerEditar, false);
    ajax.addEventListener("abort", abortHandlerEditar, false);
    ajax.open("POST", "prcd/edit_file.php"); 
    
    // http://www.developphp.com/video/JavaScript/File-Upload-Progress-Bar-Meter-Tutorial-Ajax-PHP
    //use file_upload_parser.php from above url

    //ARCHIVO CON EL PROCEDIMIENTO PARA MOVER EL DOCUMENTO AL SERVIDOR
    ajax.send(formdataEdit);
    

    function progressHandlerEditar(event) {

        _("loaded_n_totalEditar"+doc).innerHTML = "Cargado " + event.loaded + " bytes de " + event.total;
        var percent = (event.loaded / event.total) * 100;
        _("progressBarEditar"+doc).value = Math.round(percent);
        _("statusEditar"+doc).innerHTML = Math.round(percent) + "% subido... espere un momento";
      }
      
      function completeHandlerEditar(event) {
        _("statusEditar"+doc).innerHTML = event.target.responseText;
        _("progressBarEditar"+doc).value = 0; //wil clear progress bar after successful upload
          _("fileEditar"+doc).style.display='none';
          _("progressBarEditar"+doc).style.display='none';
      }
      
      function errorHandlerEditar(event) {
        _("statusEditar"+doc).innerHTML = "Fallo en la subida";
      }
      
      function abortHandlerEditar(event) {
        _("statusEditar"+doc).innerHTML = "Fallo en la subida";
      }
    
  }
  
// subir video

function uploadVideo(idDoc,idUsr){
  var video = document.getElementById('fileVideo'+idDoc).value;
  var idD = idDoc;
  var idU = idUsr;
  $.ajax({
    type: "POST",
    url: 'prcd/upload_video.php',
    dataType:'json',
    // dataType:'html',
    data:{
        idD:idD,
        idU:idU,
        video:video
    },
    success: function(response)
    {
        var jsonData = JSON.parse(JSON.stringify(response));
        if (jsonData.success == "1")
        {
        
          // console.log(jsonData.error);
          // console.log(video);

          Swal.fire({
            icon: 'success',
            imageUrl: '../../img/logo_consejo_04.png',
            imageHeight: 200,
            title: 'Video cargado',
            text: 'Proceso correcto',
            confirmButtonColor: '#3085d6',
            footer: 'INJUVENTUD'
        });
      }

    }
});

}

// <button type="submit" class="btn btn-primary" data-bs-dismiss="modal" onclick="window.location.reload();">Guardar</button>

function editVideo(){

}