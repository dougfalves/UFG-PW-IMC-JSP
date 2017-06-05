<!DOCTYPE html>
<html>
    <head>
        
        <title>Calculo de IMC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <style>
            body {
                padding-top: 0px;
                font-size: 12px;
                background: #3299CC; 
            }

            .container {
                margin: 0 auto;
                max-width: 1024px;
                width: 70%;
                width: 90%;
                margin-top: 10%;
                background: #FFF;
                padding: 2%;
                box-shadow: 2px 2px 2px #CCC;
            }
            h1{
                margin-bottom: 40px;
                text-align: center;
                font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
            }

        </style>
    </head>
    <body>

        <div class="container">

            <h1>Indice de Massa Corporal (IMC)</h1>


            <div class="row">
                <form class="form-horizontal" action="${param.contextPath}/imc/imc">

                    <fieldset>		

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="textinput">Altura</label>  
                            <div class="col-md-4">
                                <input id="altura" name="altura" type="number" placeholder="altura em cm" class="form-control input-md" required="" value="${param.altura}" placeholder="Informe a altura">                                    
                            </div>
                        </div>                       

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="textinput">Peso</label>  
                            <div class="col-md-4">
                                <input id="peso" name="peso" type="number" placeholder="peso" class="form-control input-md" required="" value="${param.peso}" placeholder="Informe o peso">
                            </div>
                        </div>                            

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="selectbasic">Sexo</label>
                                <div class="col-md-4">
                                    <select name="sexo" class="form-control" required>
                                        <option value="">--Selecione um dos itens--</option>
                                        <option value="M">Masculino</option>
                                        <option value="F">Feminino</option>
                                    </select>
                                </div>
                            </div>                       


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="button1id"></label>
                            <div class="col-md-8">
                                <button type="submit" id="button1id" name="button1id" class="btn btn-primary">Calcular</button>
                                <button type="reset" id="button2id" name="button2id" class="btn btn-default">Limpar</button>
                            </div>
                        </div>

                    </fieldset>
                </form>
            </div>
                            
            <div class="alert alert-info" role="alert" style="margin-top:45px">                
                ${resultado}
            </div>  
                            

        </div>

        <script>
            $(document).ready(function () {
                $('select').material_select();
            });
        </script>
    </body>
</html>