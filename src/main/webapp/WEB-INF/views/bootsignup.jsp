<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
   li:hover {
    background-color: #C8C8C8 ;
}
 .blue {
    color: green;
}
      form {
          padding-left: 20px;
          padding-right: 10px;
      }
    .b
{
    margin-bottom:90px;
}
</style>
</head>
<body>

  
   
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/crm/"><img src="{% static 'css/images/logo.png' %}" height="35px" style="margin-top:-10px;"></a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
         <li><a href=/crm/farmer/search/> <strong><span class="glyphicon glyphicon-user blue"></span>Farmer </strong></a></li>
          <li><a href="/crm/catalog/view"><strong><span class="glyphicon glyphicon-grain blue"></span>Products</strong></a></li>
          <li><a href="/crm/salesorder/search/"><strong><span class="glyphicon glyphicon-shopping-cart blue"></span> Orders</strong> </a></li>
          <li><a href="/crm/salesorder/calls/"> <strong><span class="glyphicon glyphicon-earphone"></span>Manage Calls</strong> </a></li>
        </ul>
 <ul class="nav navbar-nav navbar-right">
        
        <li><a style="color:0099FF" href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
      </ul>
      </div>
    </div>
  </div>
</nav>    
      <div class="container" style="margin-top:50px;">
        <form class="form-horizontal" method="post" action="">
          <fieldset>
       
          <div id="edit_farmer" style="display:none"></div>
          <div class="row">
            <div class="col-md-2 panel panel-heading">Contact Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="contact_error"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="mobile">Contact No.</label>
            <div class="col-md-3">
    <div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-phone"></i>
			</span>
              <input id="mobile" maxlength="10" name="mobile" placeholder="xxxxxxxxxxxx" class="form-control input-md ac_mobile" type="number" value={{mobile}} >
		
            </div>
	</div>
            <label class="col-md-1 control-label" for="sms">Language</label>
            <div class="col-md-3">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>
              <select id="sms" name="sms" class="form-control input-md">
                <option value="en">English</option>
                <option value="gu">Gujarati</option>
                <option value="mr">Marathi</option>
                <option value="hi">Hindi</option>
              </select>
            </div>
		</div>
            <div class="col-md-1">
	
              <a id="add_mobile" onclick=add_mobile()><i class="glyphicon glyphicon-plus"></i></a>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-md-8" id="mobile_numbers"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-1 control-label" for="first_name">First Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="first_name" name="first_name" placeholder="" class="form-control input-md" type="text">
            </div></div>

            <label class="col-md-1 control-label" for="middle_name">Mid Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="middle_name" name="middle_name" placeholder="" class="form-control input-md" type="text">
            </div>
		</div>
            <label class="col-md-1 control-label" for="last_name">Last Name</label>  
            <div class="col-md-2">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-user"></i>
			</span>
              <input id="last_name" name="last_name" placeholder="" class="form-control input-md" type="text">
            </div>
	</div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="farmer_type">Farmer Type</label>
            <div class="col-md-4">
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Farmer" checked>Farmer</label>
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Politician">Politician</label>
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Retailer">Retailer</label>
              <label class="radio-inline"><input type="radio" name="farmer_type" value="Supplier">Supplier</label>
            </div>

            <label class="col-md-1 control-label" for="description">Description</label>
            <div class="col-md-4">
			<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
              <textarea class="form-control" id="description" name="description" placeholder="Description"></textarea>
            </div></div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label" for="smartphone">Has Touchscreen Phone ?</label>
            <div class="col-md-3">
		
                <label class="radio-inline"><input type="radio" name="smartphone" value=true>Yes</label>
                <label class="radio-inline"><input type="radio" name="smartphone" value=false>No</label>
                <label class="radio-inline"><input type="radio" name="smartphone" value=null checked>Don't Know</label>
              </select>
            </div>
          </div>

          <div class="row">
            <div class="col-md-2 panel panel-heading">Address Information</div>
            <div class="col-md-4 panel panel-heading" style="display:none; color:red" id="address_error"></div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="village">Village</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-home"></i>
			</span>

              <input id="village" name="village" placeholder="" class="form-control input-md ac_village" required="" type="text">
            </div> </div>

            <label class="col-md-1 control-label" for="state">State</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

              <input id="state" name="state" placeholder="" class="form-control input-md ac_state" required="" type="text">
            </div></div>

            <label class="col-md-1 control-label" for="district">District</label>
            <div class="col-md-2">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-list"></i>
			</span>

              <input id="district" name="district" placeholder="" class="form-control input-md ac_district" required="" type="text">
            </div>
		</div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="taluka">Taluka</label>  
            <div class="col-md-2">
              <input id="taluka" name="taluka" placeholder="" class="form-control input-md ac_taluka" required="" type="text">
            </div>

            <label class="col-md-1 control-label" for="other_taluka">Other Taluka</label>  
            <div class="col-md-2">
              <input id="other_taluka" name="other_taluka" disabled="true" class="form-control input-md ac_taluka" type="text">
            </div>

            <label class="col-md-1 control-label" for="post_office">Post Office</label>  
            <div class="col-md-2">
              <input id="post_office" name="post_office" placeholder="" class="form-control input-md ac_post_office" required="" type="text">
            </div>
          </div>

          <div class="row form-group">
            <label class="col-md-2 control-label" for="pin_code">Pin Code</label>  
            <div class="col-md-2">
              <input id="pin_code" name="pin_code" placeholder="" disabled="true" class="form-control input-md" required="" type="text">
            </div>

            <label class="col-md-3 control-label" for="street_address">Address Line 1</label>
            <div class="col-md-5">
		<div class="input-group">
			<span class="input-group-addon">
			<i class="glyphicon glyphicon-pencil"></i>
			</span>
              <textarea class="form-control" id="street_address" name="street_address" placeholder="Addess Details..."></textarea>
            </div>
	</div>
          </div>


          <div class="form-group row">
            <div class="col-md-8 text-center">
              <button id="save" name="save" class="btn btn-large btn-success"> Save Farmer Information</button>
              <button class="btn btn-large btn-danger" type="button" onclick=history.go(-1)> Cancel </button>
            </div>
          </div>
          </fieldset>
        </form>
      </div>

<div class="b">
 <div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
     <p class="navbar-text pull-left">� 2016 - Site Built By 
           <a href="http://www.nimbrisk.com">NimbriskTechnology.com</a>
      </p>
      
      <a href="" class="navbar-btn btn-danger btn-xs btn pull-right"> 
      <span class="glyphicon glyphicon-star"></span>� Subscribe on YouTube</a>
    </div>
    
    
  </div>
</div>


</body>
</html>