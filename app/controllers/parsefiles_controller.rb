class ParsefilesController < ApplicationController
  # GET /parsefiles
  # GET /parsefiles.xml
  def index
    #@parsefiles = Parsefile.all
    @parsefiles= readfile
    respond_to do |format|
      format.html # new.html.erb
      format.json  { render :json => @parsefiles }
    end
    
  end

  # GET /parsefiles/1
  # GET /parsefiles/1.xml
  def show
    @parsefile = Parsefile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parsefile }
    end
  end

  # GET /parsefiles/new
  # GET /parsefiles/new.xml
  def new
    @parsefile = Parsefile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parsefile }
    end
  end

  # GET /parsefiles/1/edit
  def edit
    @parsefile = Parsefile.find(params[:id])
  end

  # POST /parsefiles
  # POST /parsefiles.xml
  def create
    @parsefile = Parsefile.new(params[:parsefile])

    respond_to do |format|
      if @parsefile.save
        format.html { redirect_to(@parsefile, :notice => 'Parsefile was successfully created.') }
        format.xml  { render :xml => @parsefile, :status => :created, :location => @parsefile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parsefile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parsefiles/1
  # PUT /parsefiles/1.xml
  def update
    @parsefile = Parsefile.find(params[:id])

    respond_to do |format|
      if @parsefile.update_attributes(params[:parsefile])
        format.html { redirect_to(@parsefile, :notice => 'Parsefile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parsefile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parsefiles/1
  # DELETE /parsefiles/1.xml
  def destroy
    @parsefile = Parsefile.find(params[:id])
    @parsefile.destroy

    respond_to do |format|
      format.html { redirect_to(parsefiles_url) }
      format.xml  { head :ok }
    end
  end
end
