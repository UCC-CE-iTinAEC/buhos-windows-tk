# coding: binary
# Generated by generate-specs
require 'helper'

describe_moneta "stack_file_memory" do
  def features
    []
  end

  def new_store
    Moneta.build do
      use(:Stack) do
        add(Moneta.new(:Null))
        add(Moneta::Adapters::Null.new)
        add { adapter :File, dir: File.join(make_tempdir, "stack_file_memory") }
        add { adapter :Memory }
      end
    end
  end

  def load_value(value)
    Marshal.load(value)
  end

  include_context 'setup_store'
  it_should_behave_like 'features'
  it_should_behave_like 'multiprocess'
  it_should_behave_like 'not_create'
  it_should_behave_like 'not_increment'
  it_should_behave_like 'null_stringkey_stringvalue'
  it_should_behave_like 'null_pathkey_stringvalue'
  it_should_behave_like 'persist_stringkey_stringvalue'
  it_should_behave_like 'persist_pathkey_stringvalue'
  it_should_behave_like 'returndifferent_stringkey_stringvalue'
  it_should_behave_like 'returndifferent_pathkey_stringvalue'
  it_should_behave_like 'store_stringkey_stringvalue'
  it_should_behave_like 'store_pathkey_stringvalue'
  it_should_behave_like 'store_large'
end
