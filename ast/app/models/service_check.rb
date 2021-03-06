# Copyright 2011 Google Inc. All Rights Reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
class ServiceCheck < ActiveRecord::Base
  
  belongs_to :service_checker
  
  has_many :service_check_details, :dependent => :destroy
  
  has_many :service_containers, :through => :service_check_details

  # Validation method
  validates_uniqueness_of :name
  validates_presence_of :name
#    validates_numericality_of :frequency, :integer => true, :allow_nil => true, :greater_than_or_equal_to => 5
end
