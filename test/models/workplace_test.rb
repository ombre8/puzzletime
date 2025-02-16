#  Copyright (c) 2006-2022, Puzzle ITC GmbH. This file is part of
#  PuzzleTime and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/puzzle/puzzletime.

# == Schema Information
#
# Table name: workplace
#
#  id   :integer          not null, primary key
#  name :string           not null
#

require 'test_helper'

class WorkplaceTest < ActiveSupport::TestCase
  test 'string representation matches name' do
    assert_equal workplaces(:zurich).to_s, 'Zürich'
  end
end
