<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

</head>
<body>
<div class="container-md  my-auto border">
    <div class="row d-flex justify-content-center">

        <div class="col-lg-2 col-sm-2  my-4 mx-8">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"
                    data-whatever="@getbootstrap">Add Task
            </button>
            <!-- modal div--->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">ADD NEW TASK</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="/addTask" method="post">
                                <div class="form-group">
                                    <label for="userName" class="col-form-label">Task name:</label>
                                    <input type="text" class="form-control" id="userName" name="taskName" required>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-form-label">Task description:</label>
                                    <textarea   type="text" class="form-control" id="password" name="description" required></textarea>
                                </div>
                                <div class="form-group">
                                    <!--Tak level of importance-->
                                    <label for="password" class="col-form-label">Task description:</label>

                                    <select name="priority">

                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <!--Tak level of importance-->
                                    <label for="password" class="col-form-label">Deadline:</label>
                                    <label>
                                        <input type="date" name="deadLine" />
                                    </label>

                                </div>


                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel
                                    </button>
                                    <button type="submit" class="btn btn-primary">Create Task</button>

                                </div>


                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-2 col-sm-2  my-4 mx-8">
            <p>Sort tasks by</p>
        </div>

        <div class="col-lg-4 col-sm-6 my-4 mx-6">
            <div class="btn-group" role="group" aria-label="Basic outlined example">
                <button type="button" class="btn btn-outline-primary">PRIORITY</button>
                <button type="button" class="btn btn-outline-primary">DATE ADDED</button>
                <button type="button" class="btn btn-outline-primary">DEADLINE</button>
            </div>
        </div>
    </div>

    <!----TAKS----->
    <div class="container" style=" margin-top: 15px;margin-bottom: 15px">

        <div class="row d-flex justify-content-center border"
             style="height:5em;border-radius:13px;background-color: #d5ae4c">
            <div class="col-lg-9 ">
                <div class="row d-flex justify-content-center ">
                    <div class="col-7 " style="position: relative; top: 20px;"><h4>TASK NAME</h4></div>
                    <div class="col-3" style="position: relative; top: 20px;"><p>Deadline: Date</p></div>
                    <div class="col-2" style="position: relative; top: 20px;"><p>Status: NOT</p></div>
                </div>

            </div>
            <div class="col-lg-1 d-flex justify-content-center " style=" width: 25px; margin-left:25px;">
                <button style="margin:auto ;height:4em; width: 60px" type="button" class="btn btn-primary "
                        data-toggle="modal" data-target="#viewModal">
                    <i class="bi bi-eye" style="font-size:20px"></i></button>
                <!-- Modal -->
                <div class="modal fade" id="viewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="viewModale"> VIEW Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-1 d-flex justify-content-center " style=" width: 25px; margin-left:25px;">
                <button style="margin:auto ;height:4em; width: 60px" type="button" class="btn btn-success"><i
                        class="bi bi-pencil-square"
                        style="font-size:20px"> </i></button>
            </div>
            <div class="col-lg-1 d-flex justify-content-center " style=" width: 25px; margin-left:25px;">
                <button style="margin:auto ;height:4em; width: 60px" type="button" class="btn btn-success"><i
                        class="bi bi-trash" style="font-size:20px"></i>
                </button>
            </div>

        </div>


    </div>


</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
        integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
        integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
        crossorigin="anonymous"></script>


</body>
</html>