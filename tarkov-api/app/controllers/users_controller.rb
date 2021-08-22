class UsersController < ApplicationController

    def create
        user = User.create(user_params)

        if user.valid?
            session[:user_id] = user.id 
            render json: user, status: :created
        else
            render json: {error: user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def save_loadout
        
        parts = params[:parts]
        user_id = params[:id]
        weapon_id = params[:gun_id]
        barrel_id = Barrel.last.id
        buffer_tube_id = BufferTube.last.id
        foregrip_id = Foregrip.last.id
        gasblock_id = Gasblock.last.id
        handguard_id = Handguard.last.id
        mount_id = Mount.last.id
        muzzle_adapter_id = MuzzleAdapter.last.id
        muzzle_id = Muzzle.last.id
        pistol_grip_id = PistolGrip.last.id
        receiver_id = Receiver.last.id
        stock_id = Stock.last.id

        parts.each do |part|
            barrel = Barrel.find_by_name(part[:name])
            
            if barrel.nil?
                puts "nope"
            else
                barrel_id = barrel[:id]
                
            end

            buffer_tube = BufferTube.find_by_name(part[:name])
            if buffer_tube.nil?
                puts "nope"
            else
                buffer_tube_id = buffer_tube[:id]
            end

            foregrip = Foregrip.find_by_name(part[:name])
            if foregrip.nil?
            else
                foregrip_id = foregrip[:id]
            end
            gasblock = Gasblock.find_by_name(part[:name])
            if gasblock.nil?
            else
                gasblock_id = gasblock[:id]
            end
            handguard = Handguard.find_by_name(part[:name])
            if handguard.nil?
            else
                handguard_id = handguard[:id]
            end
            mount = Mount.find_by_name(part[:name])
            if mount.nil?
            else
                mount_id = mount[:id]
            end
            muzzle_adapter = MuzzleAdapter.find_by_name(part[:name])
            if muzzle_adapter.nil?
            else
                muzzle_adapter_id = muzzle_adapter[:id]
            end
            muzzle = Muzzle.find_by_name(part[:name])
            if muzzle.nil?
            else
                muzzle_id = muzzle[:id]
            end
            pistol_grip = PistolGrip.find_by_name(part[:name])
            if pistol_grip.nil?
            else
                pistol_grip_id = pistol_grip[:id]
            end
            receiver = Receiver.find_by_name(part[:name])
            if receiver.nil?
            else
                receiver_id = receiver[:id]
            end
            stock = Stock.find_by_name(part[:name])
            if stock.nil?
            else
                stock_id = stock[:id]
            end
        end

        save = SavedGun.create(user_id: user_id, weapon_id: weapon_id, barrel_id: barrel_id, buffer_tube_id: buffer_tube_id, foregrip_id: foregrip_id, gasblock_id: gasblock_id, handguard_id: handguard_id, mount_id: mount_id, muzzle_adapter_id: muzzle_adapter_id, muzzle_id: muzzle_id, pistol_grip_id: pistol_grip_id, receiver_id: receiver_id, stock_id: stock_id)

        if save.valid?
            render json: save, status: :created
        else
            render json: {error: save.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def my_guns
        user = User.find(session[:user_id])
        saved_guns = user.saved_guns
        all_guns = saved_guns.map{|g| g.parts}
        render json: all_guns
    end

    def destroy_saved_gun
        gun = SavedGun.find(params[:id])
        if gun.destroy
            render json: {message: 'success'}
        else
            render json: {message: 'failure'}
        end
    end

    def complete_task
        user = User.find(session[:user_id])
        user_tasks = user.completed_tasks
        message = "Success"
        user_tasks.each do |task|
            if task.id == params[:id]
                message = "Task already exists"
            end
        end
        if message == "Success"
            CompletedTask.create(user_id: session[:user_id], task_id: params[:id])
        end
      
        render json: {status: message}
    end

    def in_progress_task
        user = User.find(session[:user_id])
        user_tasks = user.in_progress_tasks
        message = "Success"
        user_tasks.each do |task|
            if task.id === params[:id]
                message = "Task already exists"
            end
        end
        if message == "Success"
            InProgressTask.create(user_id: session[:user_id], task_id: params[:id])
        end

        render json: {status: message}
    end

    def my_completed_tasks
        user = User.find(session[:user_id])
        tasks = user.completed_tasks
        all_tasks = tasks.map{|t| t.task}
        if all_tasks.count > 0
            render json: {tasks: all_tasks}
        else
            render json: {message: 'No completed tasks'}
        end
    end

    def my_in_progress_tasks
        user = User.find(session[:user_id])
        tasks = user.in_progress_tasks
        all_tasks = tasks.map{|t| t.task}
        if all_tasks.count > 0
            render json: {tasks: all_tasks}
        else
            render json: {message: 'No completed tasks'}
        end
    end

    def destroy_in_progress
        user_tasks = InProgressTask.select{|t| t[:user_id] == session[:user_id]}
        task_id = params[:id].to_i
        in_progress_task = user_tasks.select{|t| t[:task_id] == task_id}
        if in_progress_task[0].destroy 
            completed_task = CompletedTask.create(user_id: session[:user_id], task_id: params[:id])
            render json: {completed: completed_task, deleted: in_progress_task}
        else
            render json: {status: 'Failed'}
        end
    end

    private
    def user_params
        params.permit(:username, :email, :password)
    end

end
