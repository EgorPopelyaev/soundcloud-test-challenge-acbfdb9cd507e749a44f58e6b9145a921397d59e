# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
#require 'create_upload'
require File.dirname(__FILE__) + '/app/models/upload'
require File.dirname(__FILE__) + '/lib/transient_db'
require File.dirname(__FILE__) + '/lib/scratchweb'

class TestCreateUpload < Test::Unit::TestCase
  def test_created_upload_not_nil
    upload = Upload.create    
    assert_not_nil(upload, "Upload is nil!")
  end
  
  def test_should_find_existing_upload
    upload = Upload.create
    id =  upload.id
    upload = Upload.find(id)
    assert_not_nil(upload)
  end
   
end
