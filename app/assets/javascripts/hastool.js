var datos = {
}
const toast = swal.mixin(
  {
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 5000
  }
);
var acciones = {
  createDocuments(){
    datos = {
      token: document.getElementsByName('csrf-token')[0].content,
      btnAddTool: document.getElementById('addTool'),
      btnCreateTool: document.getElementById('createTool'),
      selectTool: document.getElementById('has_tool_id'),
      selectInput: null,
      tool: null
    }
  },
  initHasTool () {
    this.createDocuments();
    datos.btnCreateTool.addEventListener('click', () => {
      datos.tool = parseInt(datos.selectTool.value);
      //console.log("C " + datos.selectInput + " T "+ datos.tool);
      this.sendHasTools();
    });
  },
  setCurriculum (e) {
    datos.selectInput = parseInt(e.getAttribute('c_id'));
  },
  sendHasTools(){
    fetch('/hastools',{
      method: 'POST',
      headers: {
        'X-CSRF-Token': datos.token,
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: 
        JSON.stringify(
          {
            "curriculum_id":datos.selectInput,
            "tool_id":datos.tool
          }
        )
    })
    .then((response) => response.json())
    .then((data) => {
      toast({
        type: 'success',
        title: 'Se agrego ' + data.tool.title + ' a ' + data.curriculum.title + ' correctamente.'
      })
    })
    .catch((error) => console.log(error));
  }
}

$(document).ready(function(){
  if( document.getElementById('has_tool_id') != null ){
    acciones.initHasTool();
  }
});