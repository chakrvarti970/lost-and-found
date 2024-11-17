<!-- Button trigger modal -->
<button style="background-color:#408080;;"type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Enquiry
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enquiry</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div style="background:cyan;">
      <form action="saveEnq.jsp" method="post">
      <div class="modal-body">
        <div class="mb-3">
    <lable for ="name"class="form-lable">Name</lable>
    <input type="text" required name="name"class="form-control" id="name" required/>
    </div>
    
    
    
   
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control" id="email1" >
    
  </div>
  <div class="mb-3">
    <lable for ="mobno"class="form-lable">Mobile Number</lable>
    <input type="text"name="mobno"class="form-control" id="mobno"/>
    </div>
      </div>
      <div class="mb-3">
    <lable for ="address"class="form-lable">Address</lable>
    <textarea name="address" class="form-control" id="address" row="6"/>
    </textarea>
    </div>
      
      <div class="modal-footer">
        <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
                </form>
                </div>
    </div>
  </div>
</div>