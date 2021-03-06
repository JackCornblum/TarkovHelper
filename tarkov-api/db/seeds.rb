# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "beginning seeding"

puts "clearing tables..."
Weapon.destroy_all
Weapon.reset_pk_sequence
Dealer.destroy_all
Dealer.reset_pk_sequence
Foregrip.destroy_all
Foregrip.reset_pk_sequence
WeaponForegrip.destroy_all
WeaponForegrip.reset_pk_sequence
Barrel.destroy_all
Barrel.reset_pk_sequence
WeaponBarrel.destroy_all
WeaponBarrel.reset_pk_sequence
PistolGrip.destroy_all
PistolGrip.reset_pk_sequence
WeaponPistolGrip.destroy_all
WeaponPistolGrip.reset_pk_sequence
BufferTube.destroy_all
BufferTube.reset_pk_sequence
WeaponBufferTube.destroy_all
WeaponBufferTube.reset_pk_sequence
Stock.destroy_all
Stock.reset_pk_sequence
StockBufferTube.destroy_all
StockBufferTube.reset_pk_sequence
WeaponStock.destroy_all
WeaponStock.reset_pk_sequence
MuzzleAdapter.destroy_all
MuzzleAdapter.reset_pk_sequence
MuzzleAdapterBarrel.destroy_all
MuzzleAdapterBarrel.reset_pk_sequence
WeaponMuzzleAdapter.destroy_all
WeaponMuzzleAdapter.reset_pk_sequence
ChargingHandle.destroy_all
ChargingHandle.reset_pk_sequence
WeaponChargingHandle.destroy_all
WeaponChargingHandle.reset_pk_sequence
Muzzle.destroy_all
Muzzle.reset_pk_sequence
WeaponMuzzle.destroy_all
WeaponMuzzle.reset_pk_sequence
MuzzleBarrel.destroy_all
MuzzleBarrel.reset_pk_sequence
MuzzleAdapterMuzzle.destroy_all
MuzzleAdapterMuzzle.reset_pk_sequence
Receiver.destroy_all
Receiver.reset_pk_sequence
WeaponReceiver.destroy_all
WeaponReceiver.reset_pk_sequence
Gasblock.destroy_all
Gasblock.reset_pk_sequence
BarrelGasblock.destroy_all
BarrelGasblock.reset_pk_sequence
Handguard.destroy_all
Handguard.reset_pk_sequence
WeaponHandguard.destroy_all
WeaponHandguard.reset_pk_sequence
HandguardReceiver.destroy_all
HandguardReceiver.reset_pk_sequence
BarrelReceiver.destroy_all
BarrelReceiver.reset_pk_sequence
Mount.destroy_all
Mount.reset_pk_sequence
MountWeapon.destroy_all
MountWeapon.reset_pk_sequence
MountHandguard.destroy_all
MountHandguard.reset_pk_sequence
MountForegrip.destroy_all
MountForegrip.reset_pk_sequence
SavedGun.destroy_all
SavedGun.reset_pk_sequence
Task.destroy_all
Task.reset_pk_sequence

puts "seeding dealers..."

Dealer.create(name: 'Prapor', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6b/Prapor_Portrait.png/revision/latest/scale-to-width-down/127?cb=20180425012550' )
Dealer.create(name: 'Therapist', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c7/Therapist_Portrait.png/revision/latest/scale-to-width-down/120?cb=20200812165537')
Dealer.create(name: 'Fence', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f7/Fence_Portrait.png/revision/latest/scale-to-width-down/127?cb=20180425012754')
Dealer.create(name: 'Skier', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0a/Skier_Portrait.png/revision/latest/scale-to-width-down/127?cb=20180425012638')
Dealer.create(name: 'Peacekeeper', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/Peacekeeper_Portrait.png/revision/latest/scale-to-width-down/127?cb=20180108000742')
Dealer.create(name: 'Mechanic', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ef/Mechanic_Portrait.png/revision/latest/scale-to-width-down/127?cb=20180425012513')
Dealer.create(name: 'Ragman', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8b/Ragman_Portrait.png/revision/latest/scale-to-width-down/127?cb=20180425012401')
Dealer.create(name: 'Jaeger', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d1/Jaeger_Portrait.png/revision/latest/scale-to-width-down/127?cb=20191102063456')
Dealer.create(name: 'no one')
puts "seeding weapons..."

Weapon.create(name: 'ADAR 2-15', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3c/ADAR2-15Image.png/revision/latest/scale-to-width-down/320?cb=20190226190907', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-101', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/31/AK101_Image.png/revision/latest/scale-to-width-down/180?cb=20180502204454', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-102', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/ca/Ak102image.png/revision/latest/scale-to-width-down/180?cb=20180506001257', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-103', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e1/AK-103_7.62x39.png/revision/latest/scale-to-width-down/180?cb=20180429234506', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-104', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b2/AK-104Image.png/revision/latest/scale-to-width-down/180?cb=20180503235112', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-105', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8b/AK-105_5.45x39.png/revision/latest/scale-to-width-down/180?cb=20180429234412', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-74', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/13/AK-74Image.png/revision/latest/scale-to-width-down/180?cb=20181226154054', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-74M', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fe/AK-74M.png/revision/latest/scale-to-width-down/180?cb=20180513014125', weapon_type: 'Assault rifle')
Weapon.create(name: 'AK-74N', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/84/Akn.png/revision/latest/scale-to-width-down/180?cb=20181028171233', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKM', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0f/Akm.png/revision/latest/scale-to-width-down/180?cb=20180206133400', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKMN', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/55/Akmn.png/revision/latest/scale-to-width-down/180?cb=20180206133117', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKMS', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2b/Akms.png/revision/latest/scale-to-width-down/180?cb=20180427005729', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKMSN', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e6/Akmsn.png/revision/latest/scale-to-width-down/180?cb=20180503233021', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKS-74', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b3/AKS-74.png/revision/latest/scale-to-width-down/180?cb=20181230153732', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKS-74N', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4f/AKS-74N.png/revision/latest/scale-to-width-down/180?cb=20180426173339', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKS-74U', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/84/Aks74u.png/revision/latest/scale-to-width-down/180?cb=20181028171406', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKS-74UB', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/19/Aks74ub.png/revision/latest/scale-to-width-down/180?cb=20181028171415', weapon_type: 'Assault rifle')
Weapon.create(name: 'AKS-74UN', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b3/Aks74un.png/revision/latest/scale-to-width-down/180?cb=20181028171353', weapon_type: 'Assault rifle')
Weapon.create(name: 'ASh-12', caliber: '12.7x55mm STs-130', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f1/ASh_12.png/revision/latest/scale-to-width-down/180?cb=20200729043013', weapon_type: 'Assault rifle')
Weapon.create(name: 'AS VAL', caliber: '9x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1c/Asval.png/revision/latest/scale-to-width-down/180?cb=20190305220933', weapon_type: 'Assault rifle')
Weapon.create(name: 'Mk47', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/68/Mk47_Mutant_View.png/revision/latest/scale-to-width-down/180?cb=20210703055155', weapon_type: 'Assault rifle')
Weapon.create(name: 'DT MDR 5.56x45', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/13/DT_MDR_5.56x45_Assault_Rifle.png/revision/latest/scale-to-width-down/180?cb=20190411211744', weapon_type: 'Assault rifle')
Weapon.create(name: 'DT MDR .308', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/33/DT_MDR_308.png/revision/latest/scale-to-width-down/180?cb=20191228210602', weapon_type: 'Assault rifle')
Weapon.create(name: 'HK 416A5', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5f/HK416Image.png/revision/latest/scale-to-width-down/180?cb=20181226145352', weapon_type: 'Assault rifle')
Weapon.create(name: 'Kel-Tec RFB 7.62x51', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/68/KT_RFB.png/revision/latest/scale-to-width-down/180?cb=20201019134602', weapon_type: 'Assault rifle')
Weapon.create(name: 'M4A1', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/29/M4a1.png/revision/latest/scale-to-width-down/180?cb=20181028172147', weapon_type: 'Assault rifle')
Weapon.create(name: 'MCX', caliber: '.300 Blackout', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/-92ucz5kq_Y.jpg/revision/latest/scale-to-width-down/180?cb=20201226014736', weapon_type: 'Assault rifle')
Weapon.create(name: 'SA-58', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ae/DS_Arms_SA-58_OSW_Para_7.62x51.png/revision/latest/scale-to-width-down/180?cb=20181028172156', weapon_type: 'Assault rifle')
Weapon.create(name: 'TX-15 DML', caliber: '5.56x45mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4d/TX-15_View.PNG/revision/latest/scale-to-width-down/180?cb=20191103030150', weapon_type: 'Assault rifle')
Weapon.create(name: 'Vepr AKM/VPO-209', caliber: '.366 TKM', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b0/Vpo209.png/revision/latest/scale-to-width-down/180?cb=20181028171328', weapon_type: 'Assault rifle')
Weapon.create(name: 'Vepr KM/VPO-136', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e9/Vpo136.png/revision/latest/scale-to-width-down/180?cb=20181028171300', weapon_type: 'Assault rifle')

Weapon.create(name: 'OP-SKS', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/Opsks.png/revision/latest/scale-to-width-down/180?cb=20190414112410', weapon_type: 'Assault carbine')
Weapon.create(name: 'SKS', caliber: '7.62x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/72/Sks.png/revision/latest/scale-to-width-down/180?cb=20190414112401', weapon_type: 'Assault carbine')
Weapon.create(name: 'Vepr Hunter/VPO-101', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f0/VeprHunterImage.png/revision/latest/scale-to-width-down/180?cb=20190410211507', weapon_type: 'Assault carbine')

Weapon.create(name: 'RPK-16', caliber: '5.45x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c7/RPK-16.png/revision/latest/scale-to-width-down/180?cb=20181226153306', weapon_type: 'Light machine gun')

Weapon.create(name: 'MP5', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/54/Mp5.png/revision/latest/scale-to-width-down/180?cb=20180507221414', weapon_type: 'Submachine gun')
Weapon.create(name: 'MP5K-N', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/45/HK_MP5K-N.png/revision/latest/scale-to-width-down/180?cb=20191028032636', weapon_type: 'Submachine gun')
Weapon.create(name: 'MP7A1', caliber: '4.6x30mm HK', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/02/HKMP7A1Image.png/revision/latest/scale-to-width-down/180?cb=20181111215340', weapon_type: 'Submachine gun')
Weapon.create(name: 'MP7A2', caliber: '4.6x30mm HK', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/52/HKMP7A2Image.png/revision/latest/scale-to-width-down/180?cb=20181111214757', weapon_type: 'Submachine gun')
Weapon.create(name: 'MP9', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0e/MP9_View.png/revision/latest/scale-to-width-down/180?cb=20191230121903', weapon_type: 'Submachine gun')
Weapon.create(name: 'MP9-N', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fd/B%26T_MP9-N_9x19_Submachinegun.png/revision/latest/scale-to-width-down/180?cb=20191230120929', weapon_type: 'Submachine gun')
Weapon.create(name: 'MPX', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f7/Mpx.png/revision/latest/scale-to-width-down/180?cb=20180219121907', weapon_type: 'Submachine gun')
Weapon.create(name: 'P90', caliber: '5.7x28mm FN', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6c/P90Image.png/revision/latest/scale-to-width-down/180?cb=20191109011038', weapon_type: 'Submachine gun')
Weapon.create(name: 'PP-19-01 Vityaz-SN', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fb/Pp19.png/revision/latest/scale-to-width-down/180?cb=20180219121911', weapon_type: 'Submachine gun')
Weapon.create(name: 'PP-9 "Klin"', caliber: '9x18mm Makarov', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/48/Klin.png/revision/latest/scale-to-width-down/180?cb=20180219121903', weapon_type: 'Submachine gun')
Weapon.create(name: 'PP-91 "Kedr"', caliber: '9x18mm Makarov', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/ba/Kedr.png/revision/latest/scale-to-width-down/180?cb=20180219121901', weapon_type: 'Submachine gun')
Weapon.create(name: 'PP-91-01 "Kedr-B"', caliber: '9x18mm Makarov', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a4/Kedrb.png/revision/latest/scale-to-width-down/180?cb=20180219121902', weapon_type: 'Submachine gun')
Weapon.create(name: 'PPSH-41', caliber: '7.62x25mm Tokarev', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d0/PPSH-41_View.png/revision/latest/scale-to-width-down/180?cb=20200508214756', weapon_type: 'Submachine gun')
Weapon.create(name: 'Saiga-9', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/70/Saiga9.png/revision/latest/scale-to-width-down/180?cb=20180219121912', weapon_type: 'Submachine gun')
Weapon.create(name: 'UMP 45', caliber: '.45 ACP', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/42/UMP45_View.png/revision/latest/scale-to-width-down/180?cb=20201224203403', weapon_type: 'Submachine gun')
Weapon.create(name: 'Vector .45', caliber: '.45 ACP', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/bf/Vector45_fir_unloaded_view.png/revision/latest/scale-to-width-down/180?cb=20201224192141', weapon_type: 'Submachine gun')
Weapon.create(name: 'Vector 9x19', caliber: '9x19mm Parabellum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9e/Vector_9x19_View.png/revision/latest/scale-to-width-down/180?cb=20201224175248', weapon_type: 'Submachine gun')

Weapon.create(name: '590A1', caliber: '12x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/56/M590A1_View.png/revision/latest/scale-to-width-down/180?cb=20200728014142', weapon_type: 'Shotgun')
Weapon.create(name: 'M870', caliber: '12x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/91/M870.png/revision/latest/scale-to-width-down/180?cb=20180426140946', weapon_type: 'Shotgun')
Weapon.create(name: 'MP-133', caliber: '12x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fe/Mr133.png/revision/latest/scale-to-width-down/180?cb=20180219121908', weapon_type: 'Shotgun')
Weapon.create(name: 'MP-153', caliber: '12x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3b/Mp153.png/revision/latest/scale-to-width-down/180?cb=20180219121906', weapon_type: 'Shotgun')
Weapon.create(name: 'MP-155', caliber: '12x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4d/MP-155.png/revision/latest/scale-to-width-down/180?cb=20210701194502', weapon_type: 'Shotgun')
Weapon.create(name: 'Saiga-12', caliber: '12x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/cd/Saiga12.png/revision/latest/scale-to-width-down/180?cb=20180219121914', weapon_type: 'Shotgun')
Weapon.create(name: 'TOZ-106', caliber: '20x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5b/Toz.png/revision/latest/scale-to-width-down/180?cb=20180219121918', weapon_type: 'Shotgun')
Weapon.create(name: 'KS-23M', caliber: '20x70mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/85/KS-23M.png/revision/latest/scale-to-width-down/180?cb=20201019145716', weapon_type: 'Shotgun')

Weapon.create(name: 'M1A', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5f/M1A_Icon.png/revision/latest/scale-to-width-down/180?cb=20180503234958', weapon_type: 'Marskman rifle')
Weapon.create(name: 'Mk-18', caliber: '.338 Lapua Magnum', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a2/Mk18.png/revision/latest/scale-to-width-down/180?cb=20210102132503', weapon_type: 'Marskman rifle')
Weapon.create(name: 'RSASS', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9b/Rsass.png/revision/latest/scale-to-width-down/180?cb=20181122021513', weapon_type: 'Marskman rifle')
Weapon.create(name: 'SR-25', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/69/SR-25_View.png/revision/latest/scale-to-width-down/180?cb=20191227220256', weapon_type: 'Marskman rifle')
Weapon.create(name: 'SVDS', caliber: '7.62x54mmR', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8f/SVD-S.png/revision/latest/scale-to-width-down/180?cb=20190411211731', weapon_type: 'Marskman rifle')
Weapon.create(name: 'VSS Vintorez', caliber: '9x39mm', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6b/Vss.png/revision/latest/scale-to-width-down/180?cb=20210114170659', weapon_type: 'Marskman rifle')

Weapon.create(name: 'DVL-10', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6c/Dvl10.png/revision/latest/scale-to-width-down/180?cb=20180219121859', weapon_type: 'Sniper rifle')
Weapon.create(name: 'M700', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/26/M700Image.png/revision/latest/scale-to-width-down/180?cb=20181226171021', weapon_type: 'Sniper rifle')
Weapon.create(name: 'Mosin', caliber: '7.62x54mmR', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/02/MosinInspect.png/revision/latest/scale-to-width-down/180?cb=20180918200314', weapon_type: 'Sniper rifle')
Weapon.create(name: 'Mosin Inf.', caliber: '7.62x54mmR', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d4/MosinInfantryImage.png/revision/latest/scale-to-width-down/180?cb=20181226165344', weapon_type: 'Sniper rifle')
Weapon.create(name: 'SV-98', caliber: '7.62x54mmR', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7d/Sv98.png/revision/latest/scale-to-width-down/180?cb=20180427101420', weapon_type: 'Sniper rifle')
Weapon.create(name: 'T-5000', caliber: '7.62x51mm NATO', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ea/T-5000_View.png/revision/latest/scale-to-width-down/180?cb=20200216013517', weapon_type: 'Sniper rifle')
Weapon.create(name: 'VPO-215', caliber: '.366 TKM', image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4e/VPO-215_View.png/revision/latest/scale-to-width-down/180?cb=20200216013459', weapon_type: 'Sniper rifle')

puts 'seeding forgrips...'

Foregrip.create(name: 'KAC Vertical pistol grip', ergonomics: 7, recoil: 0, dealer_id: 5, price: 3906, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6e/KACVPGIcon.png/revision/latest/scale-to-width-down/64?cb=20190411050204')
Foregrip.create(name: 'BCM MOD.3 Tactical grip', ergonomics: 6, recoil: 1, dealer_id: 6, price: 5488, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d8/BCMMOD3GripIcon.png/revision/latest/scale-to-width-down/64?cb=20190411103250')
Foregrip.create(name: 'SI "Cobra tactical" tactical grip', ergonomics: 9, recoil: 1, dealer_id: 6, price: 11256, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b1/Cobra_Grip_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414151233')
Foregrip.create(name: 'Magpul M-LOK AFG Tactical grip', ergonomics: 7, recoil: 2, dealer_id: 4, price: 8067, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9b/AFG_MLOK_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805202544')
Foregrip.create(name: 'Hera Arms CQR tactical grip', ergonomics: 4, recoil: 3, dealer_id: 6, price: 27416, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/88/Heraarmsgripicon.png/revision/latest/scale-to-width-down/64?cb=20200501131554')
Foregrip.create(name: 'Fortis Shift tactical grip', ergonomics: 9, recoil: 2, dealer_id: 5, price: 19656, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1d/Fortisshifticon.png/revision/latest/scale-to-width-down/64?cb=20180626014301')
Foregrip.create(name: 'Magpul AFG grip', ergonomics: 6, recoil: 2, dealer_id: 4, price: 8442, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8c/AFG_Grip_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805203209')
Foregrip.create(name: 'Magpul RVG grip', ergonomics: 7, recoil: 2, dealer_id: 5, price: 8694, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/52/RVG_Icon.gif/revision/latest/scale-to-width-down/64?cb=20210124141950')
Foregrip.create(name: 'SE-5 Express Grip', ergonomics: 8, recoil: 2, dealer_id: 6, price: 15237, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f1/SE-5_Express_Grip_Icon.png/revision/latest/scale-to-width-down/64?cb=20180805230655')
Foregrip.create(name: 'Tango Down Stubby BGV-MK46K tactical grip', ergonomics: 5, recoil: 1, dealer_id: 5, price: 4536, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/02/BGV_MK46_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805214549')
Foregrip.create(name: 'Viking Tactical UVG Tactical grip', ergonomics: 5, recoil: 2, dealer_id: 4, price: 7508, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5e/Vikinggripicon.png/revision/latest/scale-to-width-down/64?cb=20180318162423')
Foregrip.create(name: 'Zenit RK-0 Foregrip', ergonomics: 3, recoil: 2, dealer_id: 4, price: 7245, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ee/Zenit_RK-0_Foregrip_icon.png/revision/latest/scale-to-width-down/64?cb=20190101183528')
Foregrip.create(name: 'Zenit RK-1 Foregrip', ergonomics: 1, recoil: 3, dealer_id: 4, price: 20496, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/30/ZenitRK-1Icon.png/revision/latest/scale-to-width-down/64?cb=20190714212718')
Foregrip.create(name: 'Zenit RK-1 Foregrip on B-25U mount', ergonomics: 2, recoil: 3, dealer_id: 4, price: 48444, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/52/ZenitRK1B-25Uicon.png/revision/latest/scale-to-width-down/64?cb=20190104001521')
Foregrip.create(name: 'Zenit RK-2 Foregrip', ergonomics: -3, recoil: 4, dealer_id: 4, price: 26227, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/15/ZenitRK2icon.png/revision/latest/scale-to-width-down/64?cb=20190101201938')
Foregrip.create(name: 'Zenit RK-4 Foregrip', ergonomics: 4, recoil: 2, dealer_id: 4, price: 9145, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/37/ZenitRK4icon.png/revision/latest/scale-to-width-down/64?cb=20190101202418')
Foregrip.create(name: 'Zenit RK-5 Foregrip', ergonomics: 5, recoil: 2, dealer_id: 4, price: 6912, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d1/ZenitRK5icon.png/revision/latest/scale-to-width-down/64?cb=20190101202758')
Foregrip.create(name: 'Zenit RK-6 Foregrip', ergonomics: 5, recoil: 1, dealer_id: 4, price: 7263, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f0/ZenitRK6icon.png/revision/latest/scale-to-width-down/64?cb=20190101203100')
Foregrip.create(name: 'ASh-12 Vertical pistol grip', ergonomics: 5, recoil: 0, dealer_id: 1, price: 2344, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7d/ASh-12_Foregrip_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226185437')
Foregrip.create(name: 'RTM Pillau Tactical grip', ergonomics: 5, recoil: 1, dealer_id: 4, price: 4025, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/28/Pillau_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226185443')
Foregrip.create(name: 'T-5000 Pad', ergonomics: 6, recoil: 1, dealer_id: 4, price: 2128, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/70/T-5000_Pad_icon.png/revision/latest/scale-to-width-down/64?cb=20191229122158')
Foregrip.create(name: 'TD Aluminium skeletonized vertical grip', ergonomics: 6, recoil: 2, dealer_id: 5, price: 9198, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/TD_Alum_PG_Icon.png/revision/latest/scale-to-width-down/64?cb=20201019205917')
Foregrip.create(name: 'MVF001 A3 Vertical Grip KeyMod black', ergonomics: 10, recoil: 0, dealer_id: 6, price: 8747, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/cd/A3_handguard_icon.png/revision/latest/scale-to-width-down/64?cb=20201224200500')
Foregrip.create(name: 'Sig Sauer Vertical Foregrip Keymod Black', ergonomics: 5, recoil: 2, dealer_id: 5, price: 8064, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/77/Sig_grip_icon.png/revision/latest/scale-to-width-down/64?cb=20210503055140')

puts "seeding weapon_foregrips..."

WeaponForegrip.create(weapon_id: 19, foregrip_id: 1)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 1)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 2)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 2)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 3)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 3)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 5)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 6)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 6)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 7)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 7)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 8)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 8)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 9)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 9)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 10)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 10)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 11)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 11)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 12)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 12)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 13)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 13)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 14)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 14)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 15)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 15)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 16)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 16)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 17)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 17)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 18)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 18)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 19)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 19)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 20)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 20)
WeaponForegrip.create(weapon_id: 19, foregrip_id: 22)
WeaponForegrip.create(weapon_id: 39, foregrip_id: 22)

puts "seeding barrels..."

Barrel.create(name: 'HK 416A5 5.56x45 10.6 inch barrel', recoil: 1, ergonomics: -5, dealer_id: 6, price: 23666, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/26/10.6Inch416BarrelIcon.png/revision/latest/scale-to-width-down/127?cb=20190419201406')
Barrel.create(name: 'MPX 9x19 10.5 inch barrel', recoil: 4, ergonomics: -9, dealer_id: 5, price: 9954, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/89/10.5BarrelMPXIcon.png/revision/latest/scale-to-width-down/190?cb=20190415134028')
Barrel.create(name: '6.5" 9x19 barrel for MPX', recoil: 1, ergonomics: -3, dealer_id: 5, price: 6300, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c8/6.5MPXBarrelIcon.png/revision/latest/scale-to-width-down/127?cb=20190411104417')
Barrel.create(name: '4.5" 9x19 barrel for MPX', recoil: 0, ergonomics: -2, dealer_id: 5, price: 4662, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c3/4.5MPXBarrelIcon.png/revision/latest/scale-to-width-down/64?cb=20190411105622')
Barrel.create(name: '14" 9x19 barrel for MPX', recoil: 7, ergonomics: -14, dealer_id: 5, price: 15120, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/36/14_MPX_Icon.png/revision/latest/scale-to-width-down/190?cb=20190414152542')
Barrel.create(name: '406mm Molot barrel for AR-15 and compatible 5.56x45', recoil: 4, ergonomics: -15, dealer_id: 4, price: 18630, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3a/406mmMolotBarrelicon.png/revision/latest/scale-to-width-down/190?cb=20190106133002')
Barrel.create(name: '20" barrel for a Remington M700 7.62x51 NATO', recoil: 4, ergonomics: -11, dealer_id: 6, price: 24864, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2a/20inM700Barrelicon.png/revision/latest/scale-to-width-down/190?cb=20190101222146')
Barrel.create(name: '26" barrel for a Remington M700 7.62x51 NATO', recoil: 9, ergonomics: -14, dealer_id: 6, price: 28448, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/24/26inM700Barrelicon.png/revision/latest/scale-to-width-down/253?cb=20190101222628')
Barrel.create(name: 'Sawn off 200mm Mosin barrel', recoil: 0, ergonomics: -2, dealer_id: 8, price: 2205, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/66/SawnOff200mmMosinBarrelicon.png/revision/latest/scale-to-width-down/127?cb=20190101215828')
Barrel.create(name: 'Regular 514mm Mosin carbine barrel', recoil: 8, ergonomics: -8, dealer_id: 8, price: 4116, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/ba/514mmMosinBarrelicon.png/revision/latest/scale-to-width-down/190?cb=20190101215458')
Barrel.create(name: '15" barrel for RPK-16 and compatible 5.45x39', recoil: 3, ergonomics: -2, dealer_id: 1, price: 13298, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/85/15_barrel_for_RPK-16_and_compatible_5.45x39_icon.png/revision/latest/scale-to-width-down/127?cb=20181230160626')
Barrel.create(name: '22" barrel for RPK-16 and compatible 5.45x39', recoil: 7, ergonomics: -11, dealer_id: 1, price: 18857, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/69/22_barrel_for_RPK-16_and_compatible_5.45x39_icon.png/revision/latest/scale-to-width-down/190?cb=20181231103053')
Barrel.create(name: '11" barrel for 416A5 and compatible 5.56x45', recoil: 2, ergonomics: -8, dealer_id: 6, price: 27026, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/78/11inchhk416icon.png/revision/latest/scale-to-width-down/127?cb=20190106142134')
Barrel.create(name: '16.5" barrel for 416A5 and compatible 5.56x45', recoil: 5, ergonomics: -20, dealer_id: 6, price: 37520, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a8/16.5inchhk416barrelicon.png/revision/latest/scale-to-width-down/190?cb=20190106142202')
Barrel.create(name: '20" barrel for 416A5 and compatible 5.56x45', recoil: 7, ergonomics: -30, dealer_id: 6, price: 42224, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f5/20inchhk416barrelicon.png/revision/latest/scale-to-width-down/253?cb=20190106142236')
Barrel.create(name: '11" barrel for SA-58 7.62x51', recoil: 2, ergonomics: -8, dealer_id: 6, price: 26138, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4d/SA58_11Inch_Icon.png/revision/latest/scale-to-width-down/127?cb=20180804193835')
Barrel.create(name: '16" barrel for SA-58 7.62x51', recoil: 6, ergonomics: -18, dealer_id: 6, price: 30685, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0b/16_Fal_Icon.png/revision/latest/scale-to-width-down/190?cb=20180923153201')
Barrel.create(name: '21" barrel for SA-58 7.62x51', recoil: 8, ergonomics: -28, dealer_id: 6, price: 37028, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b2/21in_Fal_Barrel_icon.png/revision/latest/scale-to-width-down/253?cb=20180923102034')
Barrel.create(name: '22" barrel for a M1A 7.62x51 NATO', recoil: 9, ergonomics: -17, dealer_id: 6, price: 27392, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d2/22inchbarrelm1icon.png/revision/latest/scale-to-width-down/316?cb=20180513163742')
Barrel.create(name: '16" barrel for a M1A 7.62x51 NATO', recoil: 5, ergonomics: -12, dealer_id: 6, price: 17472, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a3/16inchbarrelm1icon.png/revision/latest/scale-to-width-down/253?cb=20180506164559')
Barrel.create(name: '18" barrel for a AR-10 and compatible 7.62x51 NATO', recoil: 5, ergonomics: -13, dealer_id: 5, price: 47502, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e8/18inchrsassicon.png/revision/latest/scale-to-width-down/253?cb=20180326132750')
Barrel.create(name: '510mm barrel for MP-133 12ga', recoil: 3, ergonomics: -5, dealer_id: 8, price: 4200, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c0/510mmmp133normal.png/revision/latest/scale-to-width-down/190?cb=20180804151511')
Barrel.create(name: '500mm .308 barrel for DVL-10', recoil: 4, ergonomics: -10, dealer_id: 4, price: 39873, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9a/500mmdvl.png/revision/latest/scale-to-width-down/253?cb=20180326132756')
Barrel.create(name: '260mm barrel for AR-15 and compatible 5.56x45', recoil: 2, ergonomics: -7, dealer_id: 5, price: 23184, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/22/260mmm4icon.png/revision/latest/scale-to-width-down/127?cb=20180326132754')
Barrel.create(name: '370mm barrel for AR-15 and compatible 5.56x45', recoil: 3, ergonomics: -14, dealer_id: 5, price: 29862, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2d/370mmm4icon.png/revision/latest/scale-to-width-down/190?cb=20190817211747')
Barrel.create(name: '165 mm 9x19 barrel for MPX-SD', recoil: 2, ergonomics: -3, dealer_id: 6, price: 6300, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3e/165mmmpxicon.png/revision/latest/scale-to-width-down/127?cb=20180326132752')
Barrel.create(name: '510mm barrel for MP-133 12ga shotgun with rib', recoil: 3, ergonomics: -3, dealer_id: 8, price: 4200, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f8/510mmmp133RIB.png/revision/latest/scale-to-width-down/190?cb=20180804151509')
Barrel.create(name: 'MP-133 12ga 540mm barrel', recoil: 3, ergonomics: -6, dealer_id: 8, price: 4095, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a5/540mmIcon.png/revision/latest/scale-to-width-down/190?cb=20190203213758')
Barrel.create(name: '540mm barrel for MR-133 12ga shotgun with rib', recoil: 3, ergonomics: -5, dealer_id: 8, price: 4410, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/07/540mmRibIcon.png/revision/latest/scale-to-width-down/190?cb=20190203213722')
Barrel.create(name: '610mm barrel for MP-133 12ga shotgun', recoil: 4, ergonomics: -7, dealer_id: 8, price: 5148, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b9/610mmmp133normal.png/revision/latest/scale-to-width-down/253?cb=20180326134809')
Barrel.create(name: '610mm barrel for MP-133 12ga shotgun with rib', recoil: 4, ergonomics: -6, dealer_id: 8, price: 5359, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f8/610mmmp133RIB.png/revision/latest/scale-to-width-down/253?cb=20180326135211')
Barrel.create(name: 'MP-133 12ga 660mm barrel', recoil: 6, ergonomics: -12, dealer_id: 8, price: 5256, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ec/660mmmp133normal.png/revision/latest/scale-to-width-down/253?cb=20190916042759')
Barrel.create(name: '660mm barrel for MP-133 12ga shotgun with rib', recoil: 6, ergonomics: -10, dealer_id: 8, price: 5777, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fc/660mmmp133RIB.png/revision/latest/scale-to-width-down/253?cb=20180326135213')
Barrel.create(name: '710mm barrel for MP-133 12ga shotgun', recoil: 9, ergonomics: -13, dealer_id: 8, price: 7306, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a8/710mmmp133normal.png/revision/latest/scale-to-width-down/316?cb=20191011222227')
Barrel.create(name: '710mm barrel for MR-133 12ga shotgun with rib', recoil: 9, ergonomics: -12, dealer_id: 8, price: 7416, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b0/710mmmp133RIB.png/revision/latest/scale-to-width-down/316?cb=20180326135215')
Barrel.create(name: '750mm barrel for MP-133 12ga shotgun', recoil: 10, ergonomics: -19, dealer_id: 8, price: 8000, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/12/750mmmp133normal.png/revision/latest/scale-to-width-down/316?cb=20180326134813')
Barrel.create(name: '750mm barrel for MP-133 12ga shotgun with rib', recoil: 10, ergonomics: -17, dealer_id: 8, price: 8064, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/89/750mmmp133RIB.png/revision/latest/scale-to-width-down/316?cb=20180326135217')
Barrel.create(name: '610 mm barrel for MP-153 12ga shotgun', recoil: 4, ergonomics: -7, dealer_id: 8, price: 7539, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1f/610mmmp153.png/revision/latest/scale-to-width-down/253?cb=20181014215451')
Barrel.create(name: '660 mm barrel for MP-153 12ga shotgun', recoil: 6, ergonomics: -12, dealer_id: 8, price: 7538, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/79/660mmmp153.png/revision/latest/scale-to-width-down/253?cb=20181014215445')
Barrel.create(name: '750 mm barrel for MP-153 12ga shotgun', recoil: 10, ergonomics: -20, dealer_id: 8, price: 7856, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e2/750mmmp153.png/revision/latest/scale-to-width-down/316?cb=20180326134151')
Barrel.create(name: '22" barrel for a AR-10 and compatible 7.62x51 NATO', recoil: 9, ergonomics: -22, dealer_id: 5, price: 57960, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7a/22inchrsassicon.png/revision/latest/scale-to-width-down/316?cb=20180326132751')
Barrel.create(name: '710 mm barrel for MP-153 12ga shotgun', recoil: 9, ergonomics: -16, dealer_id: 8, price: 7856, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ef/710mmmp153.png/revision/latest/scale-to-width-down/316?cb=20180326134150')
Barrel.create(name: '660mm vent rib barrel for M870 12ga', recoil: 9, ergonomics: -12, dealer_id: 6, price: 15921, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/60/660mmventicon.png/revision/latest/scale-to-width-down/253?cb=20180529235725')
Barrel.create(name: 'Cut off 325mm barrel for M870 12ga', recoil: 1, ergonomics: 2, dealer_id: 6, price: 6265, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/325mmm870barrelicon.png/revision/latest/scale-to-width-down/127?cb=20180506164738')
Barrel.create(name: '508mm barrel for M870 12ga with a fixed sight', recoil: 6, ergonomics: -7, dealer_id: 4, price: 8514, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/85/508mm_barrel_for_M870_12ga_icon.png/revision/latest/scale-to-width-down/190?cb=20190124001721')
Barrel.create(name: 'FN P90 5.7x28 10.5 inch barrel', recoil: 5, ergonomics: -3, dealer_id: 6, price: 21952, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/70/10.5_barrel_for_P90_5.7x28_icon.png/revision/latest/scale-to-width-down/127?cb=20200501131441')
Barrel.create(name: '16" barrel for P90 5.7x28', recoil: 13, ergonomics: -13, dealer_id: 4, price: 25645, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/64/16_in_P90_barrel_icon.png/revision/latest/scale-to-width-down/190?cb=20200130233919')
Barrel.create(name: '26" stainless steel barrel for a Remington M700 7.62x51 NATO', recoil: 9, ergonomics: -14, dealer_id: 6, price: 29008, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/99/26_stainless_steel_barrel_for_a_Remington_M700_7_62x51_NATO_icon.png/revision/latest/scale-to-width-down/253?cb=20200213223047')
Barrel.create(name: '20" stainless steel barrel for a Remington M700 7.62x51 NATO', recoil: 4, ergonomics: -10, dealer_id: 6, price: 25536, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6a/20_stainless_steel_barrel_for_a_Remington_M700_7_62x51_NATO_icon.png/revision/latest/scale-to-width-down/190?cb=20200213223138')
Barrel.create(name: '20" barrel for AR-15 and compatible 5.56x45', recoil: 6, ergonomics: -29, dealer_id: 5, price: 44352, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/97/20_barrel_for_AR_15_and_compatible_5.56x45_Icon.png/revision/latest/scale-to-width-down/253?cb=20191227193753')
Barrel.create(name: '20" barrel for SR-25 and compatible 7.62x51', recoil: 9, ergonomics: -21, dealer_id: 5, price: 48888, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/98/20_Inch_SR-25_Barrel_Icon.png/revision/latest/scale-to-width-down/253?cb=20191227220314')
Barrel.create(name: '16" barrel for SR-25 and compatible 7.62x51', recoil: 5, ergonomics: -12, dealer_id: 5, price: 37044, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5a/16_INCH_SR-25_BARREL_ICON.png/revision/latest/scale-to-width-down/190?cb=20191227220314')
Barrel.create(name: '171mm barrel for MCX and compatible .300 BLK', recoil: 3, ergonomics: -4, dealer_id: 4, price: 18536, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9f/171mm_mcx_barrel_icon.png/revision/latest/scale-to-width-down/127?cb=20201224200456')
Barrel.create(name: '229mm barrel for MCX and compatible .300 BLK', recoil: 5, ergonomics: -6, dealer_id: 4, price: 22331, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/53/229mm_MCX_Icon.png/revision/latest/scale-to-width-down/127?cb=20201227221613')
Barrel.create(name: '5" barrel for Vector 9x19', recoil: 3, ergonomics: 0, dealer_id: 4, price: 9430, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/02/Vector_5inbarrel_9x19_icon.png/revision/latest/scale-to-width-down/127?cb=20210109174254')
Barrel.create(name: '6" barrel for Vector 9x19', recoil: 4, ergonomics: -2, dealer_id: 4, price: 11155, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d9/Vector_9mm_6in_icon.png/revision/latest/scale-to-width-down/127?cb=20201227060628')
Barrel.create(name: '5" Vector barrel .45 ACP', recoil: 3, ergonomics: 0, dealer_id: 4, price: 10235, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/74/Vector45_barrel_5inch_icon.png/revision/latest/scale-to-width-down/127?cb=20210107163929')
Barrel.create(name: '6" Vector barrel .45 ACP', recoil: 4, ergonomics: -2, dealer_id: 4, price: 12305, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fe/.45_ACP_Vector6inch_icon.png/revision/latest/scale-to-width-down/127?cb=20201227222129')

puts "seeding weapon_barrels..."

WeaponBarrel.create(weapon_id: 68, barrel_id:7)
WeaponBarrel.create(weapon_id: 68, barrel_id:8)
WeaponBarrel.create(weapon_id: 69, barrel_id:9)
WeaponBarrel.create(weapon_id: 70, barrel_id:9)
WeaponBarrel.create(weapon_id: 69, barrel_id:10)
WeaponBarrel.create(weapon_id: 70, barrel_id:10)
WeaponBarrel.create(weapon_id: 35, barrel_id:11)
WeaponBarrel.create(weapon_id: 28, barrel_id:16)
WeaponBarrel.create(weapon_id: 28, barrel_id:17)
WeaponBarrel.create(weapon_id: 28, barrel_id:18)
WeaponBarrel.create(weapon_id: 61, barrel_id:19)
WeaponBarrel.create(weapon_id: 61, barrel_id:20)
WeaponBarrel.create(weapon_id: 61, barrel_id:21)
WeaponBarrel.create(weapon_id: 55, barrel_id:22)
WeaponBarrel.create(weapon_id: 67, barrel_id:23)
WeaponBarrel.create(weapon_id: 55, barrel_id:27)
WeaponBarrel.create(weapon_id: 55, barrel_id:28)
WeaponBarrel.create(weapon_id: 55, barrel_id:29)
WeaponBarrel.create(weapon_id: 55, barrel_id:30)
WeaponBarrel.create(weapon_id: 55, barrel_id:31)
WeaponBarrel.create(weapon_id: 55, barrel_id:32)
WeaponBarrel.create(weapon_id: 55, barrel_id:33)
WeaponBarrel.create(weapon_id: 55, barrel_id:34)
WeaponBarrel.create(weapon_id: 55, barrel_id:35)
WeaponBarrel.create(weapon_id: 55, barrel_id:36)
WeaponBarrel.create(weapon_id: 55, barrel_id:37)
WeaponBarrel.create(weapon_id: 56, barrel_id:38)
WeaponBarrel.create(weapon_id: 56, barrel_id:39)
WeaponBarrel.create(weapon_id: 56, barrel_id:40)
WeaponBarrel.create(weapon_id: 63, barrel_id:41)
WeaponBarrel.create(weapon_id: 56, barrel_id:42)
WeaponBarrel.create(weapon_id: 54, barrel_id:43)
WeaponBarrel.create(weapon_id: 54, barrel_id:44)
WeaponBarrel.create(weapon_id: 54, barrel_id:45)
WeaponBarrel.create(weapon_id: 43, barrel_id:46)
WeaponBarrel.create(weapon_id: 43, barrel_id:47)
WeaponBarrel.create(weapon_id: 68, barrel_id:48)
WeaponBarrel.create(weapon_id: 68, barrel_id:49)
WeaponBarrel.create(weapon_id: 52, barrel_id:55)
WeaponBarrel.create(weapon_id: 52, barrel_id:56)
WeaponBarrel.create(weapon_id: 51, barrel_id:57)
WeaponBarrel.create(weapon_id: 51, barrel_id:58)

puts "seeding pistol grips..."
PistolGrip.create(name: 'US Palm pistol grip for AK', ergonomics: 12, dealer_id: 5, price: 8946, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c3/USPalmIcon.png/revision/latest/scale-to-width-down/64?cb=20190411050222')
PistolGrip.create(name: 'HK Grip V.2 pistol grip for AR-15 based systems', ergonomics: 7, dealer_id: 5, price: 3780, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/15/Grip_v2_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414151429')
PistolGrip.create(name: 'Desert Tech pistol grip for MDR', ergonomics: 5, dealer_id: 6, price: 2599, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/43/Desert_Tech_pistol_grip_for_MDR_icon.gif/revision/latest/scale-to-width-down/64?cb=20191230180853')
PistolGrip.create(name: 'Fab Defence AGR-870 pistol grip for Remington-870', ergonomics: 9, dealer_id: 4, price: 3300, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1c/Agr870pistolgripicon.png/revision/latest/scale-to-width-down/64?cb=20190106151302')
PistolGrip.create(name: 'Izhmash AK-12 regular pistol grip', ergonomics: 8, dealer_id: 1, price: 1881, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/24/Izhmash_AK-12_regular_pistol_grip_icon.png/revision/latest/scale-to-width-down/64?cb=20181230160708')
PistolGrip.create(name: 'HK "Battle Grip" pistol grip for AR-15 based systems', ergonomics: 6, dealer_id: 6, price: 2800, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e2/HK_Battle_Grip_icon.png/revision/latest/scale-to-width-down/64?cb=20190101222554')
PistolGrip.create(name: 'HK Battle Grip with Beavertail pistol grip for AR-15 based systems', ergonomics: 7, dealer_id: 6, price: 4354, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/35/Beavertailpistolgripicon.png/revision/latest/scale-to-width-down/64?cb=20190106141742')
PistolGrip.create(name: 'Fab AG FAL pistol grip for SA-58', ergonomics: 13, dealer_id: 4, price: 4845, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4c/AG_FAL_Icon.png/revision/latest/scale-to-width-down/64?cb=20180919211820')
PistolGrip.create(name: 'SA-58 pistol grip', ergonomics: 5, dealer_id: 6, price: 1232, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/44/SA58_Regular_Icon.png/revision/latest/scale-to-width-down/64?cb=20180919202054')
PistolGrip.create(name: 'TAPCO SAW-Style black pistol grip for SA-58', ergonomics: 10, dealer_id: 6, price: 3592, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c6/SA58_SAW_Icon.png/revision/latest/scale-to-width-down/64?cb=20180804170007')
PistolGrip.create(name: 'Magpul MOE pistol grip for AK', ergonomics: 12, dealer_id: 6, price: 8239, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/99/AKMOE_Icon.png/revision/latest/scale-to-width-down/64?cb=20190603210026')
PistolGrip.create(name: 'M14ALCS(MOD. 0) pistol grip for M14', ergonomics: 6, dealer_id: 6, price: 2927, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/10/M14ALCSpistolgripicon.png/revision/latest/scale-to-width-down/64?cb=20180530001624')
PistolGrip.create(name: 'PP-19-01 Izhmash pistol grip', ergonomics: 7, dealer_id: 1, price: 980, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/33/Pp19grip.png/revision/latest/scale-to-width-down/64?cb=20180326153415')
PistolGrip.create(name: 'Izhmash AK bakelite pistol grip (6P4 Sb.8V)', ergonomics: 6, dealer_id: 1, price: 833, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/77/6p4sb.8v.png/revision/latest/scale-to-width-down/64?cb=20190517224131')
PistolGrip.create(name: 'Izhmash AK polymer pistol grip (6P1 Sb.8)', ergonomics: 7, dealer_id: 1, price: 861, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d3/6p1sb.8.png/revision/latest/scale-to-width-down/64?cb=20180326153403')
PistolGrip.create(name: 'Izhmash AK-74 Textolite pistol grip (6P4 Sb.9)', ergonomics: 6, dealer_id: 1, price: 806, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1d/6p4sb9..png/revision/latest/scale-to-width-down/64?cb=20190517224114')
PistolGrip.create(name: 'Molot AK bakelite pistol grip', ergonomics: 6, dealer_id: 4, price: 884, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9c/Molotbak..png/revision/latest/scale-to-width-down/64?cb=20190517230242')
PistolGrip.create(name: 'TAPCO SAW-Style pistol grip for AK', ergonomics: 11, dealer_id: 5, price: 5544, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/ba/AK_SAW_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805212946')
PistolGrip.create(name: 'Zenit RK-3 AK pistol grip', ergonomics: 12, dealer_id: 4, price: 9338, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e8/Rk-3.png/revision/latest/scale-to-width-down/64?cb=20200620112530')
PistolGrip.create(name: 'Colt A2 AR-15 pistol grip', ergonomics: 5, dealer_id: 5, price: 1512, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7e/A2m4standard.png/revision/latest/scale-to-width-down/64?cb=20180326152358')
PistolGrip.create(name: 'DI ECS FDE pistol grip for AR-15 based systems', ergonomics: 5, dealer_id: 4, price: 1609, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/21/Ecsfde.png/revision/latest/scale-to-width-down/64?cb=20180326161919')
PistolGrip.create(name: 'Hogue OverMolded Rubber Grip', ergonomics: 9, dealer_id: 5, price: 4410, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4c/OMRG_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805213210')
PistolGrip.create(name: 'MIAD Pistol grip for AR-15 based systems', ergonomics: 8, dealer_id: 5, price: 3906, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e7/Miad.png/revision/latest/scale-to-width-down/64?cb=20180326153406')
PistolGrip.create(name: 'Magpul MOE AR-15 pistol grip', ergonomics: 10, dealer_id: 5, price: 3780, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/be/Magpul_MOE_AR-15_pistol_grip_icon.gif/revision/latest/scale-to-width-down/64?cb=20200326205033')
PistolGrip.create(name: 'Naroh Arms GRAL-S Pistol grip for AR-15-compatible weapons', ergonomics: 15, dealer_id: 5, price: 16758, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/ff/Grals.png/revision/latest/scale-to-width-down/64?cb=20180326153048')
PistolGrip.create(name: 'Stark AR Rifle Grip for AR-15-compatible weapons', ergonomics: 11, dealer_id: 5, price: 5670, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/75/STARK_AR_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805213405')
PistolGrip.create(name: 'AS VAL Pistol grip', ergonomics: 5, dealer_id: 1, price: 1628, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1a/Valgrip.png/revision/latest/scale-to-width-down/64?cb=20180326153055')
PistolGrip.create(name: 'TAPCO SAW-Style pistol grip for SKS INTRAFUSE Kit', ergonomics: 10, dealer_id: 6, price: 3721, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d7/SAW_SKS_Icon.png/revision/latest/scale-to-width-down/64?cb=20180727180834')
PistolGrip.create(name: 'Hera Arms HG-15 pistol grip for AR-15 based systems', ergonomics: 10, dealer_id: 6, price: 5712, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/eb/Hera_Arms_HG-15_pistol_grip_for_AR-15_based_systems_icon.png/revision/latest/scale-to-width-down/64?cb=20200213223950')
PistolGrip.create(name: 'SI Enhanced pistol grip for AK', ergonomics: 8, dealer_id: 6, price: 4368, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a5/SI_Enhanced_pistol_grip_for_AK_Icon.gif/revision/latest/scale-to-width-down/64?cb=20200407180011')
PistolGrip.create(name: 'HK Ergo PSG-1 style pistol grip for AR-15 based systems', ergonomics: 15, dealer_id: 6, price: 27821, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c5/ErgoPSG-1icon.png/revision/latest/scale-to-width-down/64?cb=20191109013521')
PistolGrip.create(name: 'AK Aeroknox Scorpius pistol grip', ergonomics: 12, dealer_id: 6, price: 6496, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/11/Aeroknox_scorpius_pistol_grip_for_AK_icon.png/revision/latest/scale-to-width-down/64?cb=20201020134139')
PistolGrip.create(name: 'SIG MCX pistol grip', ergonomics: 6, dealer_id: 4, price: 2760, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/ff/MCX_Pistolgrip_Icon.png/revision/latest/scale-to-width-down/64?cb=20201227040641')

puts "seeding WeaponPistolGrips..."

WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 1)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 2)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 2)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 2)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 2)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 2)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 2)
WeaponPistolGrip.create(weapon_id: 22, pistol_grip_id: 3)
WeaponPistolGrip.create(weapon_id: 23, pistol_grip_id: 3)
WeaponPistolGrip.create(weapon_id: 54, pistol_grip_id: 4)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 5)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 6)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 6)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 6)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 6)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 6)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 6)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 7)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 7)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 7)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 7)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 7)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 7)
WeaponPistolGrip.create(weapon_id: 28, pistol_grip_id: 8)
WeaponPistolGrip.create(weapon_id: 28, pistol_grip_id: 9)
WeaponPistolGrip.create(weapon_id: 28, pistol_grip_id: 10)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 11)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 13)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 14)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 15)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 16)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 17)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 18)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 19)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 67, pistol_grip_id: 20)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 67, pistol_grip_id: 21)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 67, pistol_grip_id: 22)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 67, pistol_grip_id: 23)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 24)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 24)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 24)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 24)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 24)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 24)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 25)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 25)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 25)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 25)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 25)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 25)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 26)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 26)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 26)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 26)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 26)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 26)
WeaponPistolGrip.create(weapon_id: 20, pistol_grip_id: 27)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 29)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 29)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 29)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 29)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 29)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 29)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 30)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 31)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 31)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 31)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 31)
WeaponPistolGrip.create(weapon_id: 63, pistol_grip_id: 31)
WeaponPistolGrip.create(weapon_id: 29, pistol_grip_id: 31)
WeaponPistolGrip.create(weapon_id: 2, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 3, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 4, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 5, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 6, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 7, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 8, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 9, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 11, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 12, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 13, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 14, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 15, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 16, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 17, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 18, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 35, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 49, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 30, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 31, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 44, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 58, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 65, pistol_grip_id: 32)
WeaponPistolGrip.create(weapon_id: 1, pistol_grip_id: 33)
WeaponPistolGrip.create(weapon_id: 24, pistol_grip_id: 33)
WeaponPistolGrip.create(weapon_id: 26, pistol_grip_id: 33)
WeaponPistolGrip.create(weapon_id: 42, pistol_grip_id: 33)
WeaponPistolGrip.create(weapon_id: 62, pistol_grip_id: 33)
WeaponPistolGrip.create(weapon_id: 27, pistol_grip_id: 33)

puts "seeding buffer tubes..."

BufferTube.create(name: 'ADAR buffer tube', recoil: 0, ergonomics: 0, dealer_id: 4, price: 920, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6e/ADARBufferTubeIcon.png/revision/latest/scale-to-width-down/127?cb=20191031142454')
BufferTube.create(name: 'CAA AKTS AK-74 Buffer Tube for AK and compatible', recoil: 3, ergonomics: -1, dealer_id: 6, price: 7280, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/13/AKTS_icon.png/revision/latest/scale-to-width-down/127?cb=20200203142106')
BufferTube.create(name: 'SI Advanced receiver extension buffer tube', recoil: 4, ergonomics: 2, dealer_id: 6, price: 10719, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/93/AnodisedIcon.gif/revision/latest/scale-to-width-down/127?cb=20190430183809')
BufferTube.create(name: 'COLT "A2" buffer tube', recoil: 2, ergonomics: 0, dealer_id: 5, price: 4410, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f6/Ca2buffertubeicon.png/revision/latest/scale-to-width-down/127?cb=20180326123506')
BufferTube.create(name: 'CAA AKTS AK-74 Buffer Tube for AK and compatible (foldable)', recoil: 3, ergonomics: -1, dealer_id: 6, price: 6944, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7c/CAA_AKTS_AK-74_Buffer_Tube_for_AK_%28foldable%29_icon.png/revision/latest/scale-to-width-down/127?cb=20200203140649')
BufferTube.create(name: 'Colt buffer tube', recoil: 1, ergonomics: 0, dealer_id: 4, price: 1231, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6b/Cstbuffertubeicon.png/revision/latest/scale-to-width-down/127?cb=20190603205650')
BufferTube.create(name: 'HK "Enhanced Tube" buffer tube', recoil: 3, ergonomics: 0, dealer_id: 6, price: 5589, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/49/Hkenhancedbuffertubeicon.png/revision/latest/scale-to-width-down/127?cb=20190106141602')
BufferTube.create(name: 'Izhmash RPK-16 buffer tube', recoil: 4, ergonomics: 0, dealer_id: 6, price: 3248, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/34/Izhmash_RPK-16_buffer_tube_icon.png/revision/latest/scale-to-width-down/127?cb=20181230160543')
BufferTube.create(name: 'AKS-74/AKS-74U PT Lock', recoil: 0, ergonomics: 0, dealer_id: 4, price: 3120, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6e/PT74SIcon.png/revision/latest/scale-to-width-down/64?cb=20180728185017')
BufferTube.create(name: 'AK74/AK100 PT Lock', recoil: 0, ergonomics: 0, dealer_id: 4, price: 3713, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ab/Ptlockicon.png/revision/latest/scale-to-width-down/64?cb=20180728185006')

puts "seeding WeaponBufferTubes..."

WeaponBufferTube.create(weapon_id: 1, buffer_tube_id: 1)
WeaponBufferTube.create(weapon_id: 26, buffer_tube_id: 1)
WeaponBufferTube.create(weapon_id: 29, buffer_tube_id: 1)
WeaponBufferTube.create(weapon_id: 7, buffer_tube_id: 2)
WeaponBufferTube.create(weapon_id: 9, buffer_tube_id: 2)
WeaponBufferTube.create(weapon_id: 10, buffer_tube_id: 2)
WeaponBufferTube.create(weapon_id: 11, buffer_tube_id: 2)
WeaponBufferTube.create(weapon_id: 30, buffer_tube_id: 2)
WeaponBufferTube.create(weapon_id: 31, buffer_tube_id: 2)
WeaponBufferTube.create(weapon_id: 1, buffer_tube_id: 3)
WeaponBufferTube.create(weapon_id: 26, buffer_tube_id: 3)
WeaponBufferTube.create(weapon_id: 29, buffer_tube_id: 3)
WeaponBufferTube.create(weapon_id: 1, buffer_tube_id: 4)
WeaponBufferTube.create(weapon_id: 26, buffer_tube_id: 4)
WeaponBufferTube.create(weapon_id: 29, buffer_tube_id: 4)
WeaponBufferTube.create(weapon_id: 63, buffer_tube_id: 4)
WeaponBufferTube.create(weapon_id: 2, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 3, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 4, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 5, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 6, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 8, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 44, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 49, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 58, buffer_tube_id: 5)
WeaponBufferTube.create(weapon_id: 1, buffer_tube_id: 6)
WeaponBufferTube.create(weapon_id: 26, buffer_tube_id: 6)
WeaponBufferTube.create(weapon_id: 29, buffer_tube_id: 6)
WeaponBufferTube.create(weapon_id: 63, buffer_tube_id: 6)
WeaponBufferTube.create(weapon_id: 24, buffer_tube_id: 7)
WeaponBufferTube.create(weapon_id: 63, buffer_tube_id: 7)
WeaponBufferTube.create(weapon_id: 2, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 3, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 4, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 5, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 6, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 8, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 35, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 58, buffer_tube_id: 8)
WeaponBufferTube.create(weapon_id: 14, buffer_tube_id: 9)
WeaponBufferTube.create(weapon_id: 15, buffer_tube_id: 9)
WeaponBufferTube.create(weapon_id: 16, buffer_tube_id: 9)
WeaponBufferTube.create(weapon_id: 17, buffer_tube_id: 9)
WeaponBufferTube.create(weapon_id: 18, buffer_tube_id: 9)
WeaponBufferTube.create(weapon_id: 8, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 6, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 2, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 5, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 3, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 4, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 49, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 58, buffer_tube_id: 10)
WeaponBufferTube.create(weapon_id: 44, buffer_tube_id: 10)

puts "seeding stocks..."

Stock.create(name: 'Magpul PRS GEN2 FDE stock', recoil: 34, ergonomics: 2, dealer_id: 5, price: 20790, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c1/Prsgen2icon.png/revision/latest/scale-to-width-down/127?cb=20180326123518')
Stock.create(name: 'Izhmash wooden AK-74 stock (6P20 Sb.5)', recoil: 33, ergonomics: 3, dealer_id: 1, price: 2014, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5e/6p20sb5icon.png/revision/latest/scale-to-width-down/127?cb=20210130162812')
Stock.create(name: 'Polymer stock for AK-74M (6P34 Sb.15)', recoil: 32, ergonomics: 5, dealer_id: 1, price: 1773, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/68/6p45sb15icon.png/revision/latest/scale-to-width-down/127?cb=20180506164438')
Stock.create(name: 'Izhmash AK-12 regular stock', recoil: 30, ergonomics: 3, dealer_id: 1, price: 4905, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/53/Ak12stockicon.png/revision/latest/scale-to-width-down/127?cb=20190106125627')
Stock.create(name: 'Izhmash metal stock for AKS-74U (6P26 Sb.5)', recoil: 30, ergonomics: 10, dealer_id: 1, price: 1683, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d2/Aksustockicon.png/revision/latest/scale-to-width-down/127?cb=20180326123504')
Stock.create(name: 'M1A Archangel stock', recoil: 38, ergonomics: 32, dealer_id: 6, price: 27846, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/95/Archangelstockicon.png/revision/latest/scale-to-width-down/190?cb=20180530001246')
Stock.create(name: 'AT AICS polymer stock for M700', recoil: 34, ergonomics: 38, dealer_id: 6, price: 29680, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/bf/AT_AICS_Polymer_Stock_for_M700_stash.jpg/revision/latest/scale-to-width-down/253?cb=20191115073849')
Stock.create(name: 'B5 Precision stock', recoil: 34, ergonomics: 1, dealer_id: 5, price: 22428, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/bb/B5precisionicon.png/revision/latest/scale-to-width-down/127?cb=20210102073628')
Stock.create(name: 'Armacon Baskak stock', recoil: 35, ergonomics: 2, dealer_id: 4, price: 6189, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/51/Baskakstockicon.png/revision/latest/scale-to-width-down/127?cb=20180326123505')
Stock.create(name: 'MFT BUS Stock', recoil: 32, ergonomics: 2, dealer_id: 5, price: 9828, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/10/Busstockicon.png/revision/latest/scale-to-width-down/127?cb=20180326123506')
Stock.create(name: 'Double Star Ace Socom gen.4 stock for AR-15', recoil: 32, ergonomics: 4, dealer_id: 6, price: 11928, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/97/Double_Star_Ace_Socom_gen.4_stock_for_AR-15_icon.jpg/revision/latest/scale-to-width-down/127?cb=20191115230327')
Stock.create(name: 'KRISS Defiance DS150 stock', recoil: 32, ergonomics: 9, dealer_id: 5, price: 9576, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2e/Ds150_icon.png/revision/latest/scale-to-width-down/127?cb=20201226212858')
Stock.create(name: 'EMOD Stock', recoil: 31, ergonomics: 9, dealer_id: 5, price: 10836, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6f/Emodstockicon.png/revision/latest/scale-to-width-down/127?cb=20180729194535')
Stock.create(name: 'F93 Pro Stock', recoil: 30, ergonomics: 10, dealer_id: 6, price: 11357, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7c/F93_Icon.png/revision/latest/scale-to-width-down/127?cb=20180805173417')
Stock.create(name: 'DSA BRS stock for SA-58', recoil: 37, ergonomics: 9, dealer_id: 6, price: 18088, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fa/FAL_BRS_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923102502')
Stock.create(name: 'SA-58 folding stock', recoil: 31, ergonomics: 3, dealer_id: 6, price: 15697, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/df/FAL_Folding_SA58_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923092249')
Stock.create(name: 'Polymer stock DSA humpback for SA-58', recoil: 31, ergonomics: -4, dealer_id: 6, price: 3808, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/ff/FAL_Humpback_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923092328')
Stock.create(name: 'DSA SPR stock for SA-58', recoil: 36, ergonomics: 7, dealer_id: 6, price: 26221, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/57/FAL_SPR_Stock_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923092530')
Stock.create(name: 'FN P90 stock', recoil: 9, ergonomics: 26, dealer_id: 5, price: 4284, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/FN_P90_stock_icon.png/revision/latest/scale-to-width-down/190?cb=20200213210731')
Stock.create(name: 'FN PS90 stock', recoil: 9, ergonomics: 26, dealer_id: 4, price: 3853, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/05/FN_PS90_stock_icon.jpg/revision/latest/scale-to-width-down/190?cb=20191116064954')
Stock.create(name: 'Fab Defence GL Core Stock', recoil: 27, ergonomics: 15, dealer_id: 4, price: 6527, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/94/GL_Core_Icon.png/revision/latest/scale-to-width-down/127?cb=20210330191248')
Stock.create(name: 'Fab Defence GLR-16-S Stock', recoil: 29, ergonomics: 13, dealer_id: 4, price: 5520, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c1/Glr16icon.png/revision/latest/scale-to-width-down/127?cb=20190106125309')
Stock.create(name: 'Fab Defence GL Shock Stock', recoil: 29, ergonomics: 13, dealer_id: 4, price: 11927, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0b/Glshockstockicon.png/revision/latest/scale-to-width-down/127?cb=20180530001414')
Stock.create(name: 'HK E1 Stock for AR-15 and compatible', recoil: 33, ergonomics: 4, dealer_id: 5, price: 13482, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c6/HK_E1_Icon.png/revision/latest/scale-to-width-down/127?cb=20190414142246')
Stock.create(name: 'HK A2 Stock', recoil: 34, ergonomics: 6, dealer_id: 5, price: 15246, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/65/Hka2stockicon.png/revision/latest/scale-to-width-down/127?cb=20180326123509')
Stock.create(name: 'HK A3 old stock model', recoil: 33, ergonomics: 7, dealer_id: 5, price: 16632, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/19/Hka3stock.png/revision/latest/scale-to-width-down/127?cb=20190709183333')
Stock.create(name: 'HK Slim Line Stock', recoil: 30, ergonomics: 5, dealer_id: 6, price: 5712, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/84/HKSlimLineStockIcon.png/revision/latest/scale-to-width-down/127?cb=20190106141724')
Stock.create(name: 'Izhmash polymer AK-74 stock (6P20 Sb.7)', recoil: 32, ergonomics: 5, dealer_id: 1, price: 2255, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/02/Izhmash_polymer_AK-74_stock_icon.gif/revision/latest/scale-to-width-down/127?cb=20200325214530')
Stock.create(name: 'LMT Sopmod stock', recoil: 29, ergonomics: 6, dealer_id: 6, price: 6105, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ad/LMTSopmodStockIcon.png/revision/latest/scale-to-width-down/127?cb=20180513141641')
Stock.create(name: 'Troy M7A1 PDW stock', recoil: 26, ergonomics: 18, dealer_id: 6, price: 6181, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/da/M7A1_Icon.gif/revision/latest/scale-to-width-down/127?cb=20181006190331')
Stock.create(name: 'SGA stock for M870', recoil: 42, ergonomics: 10, dealer_id: 6, price: 9995, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/12/M870stockmagpulicon.png/revision/latest/scale-to-width-down/127?cb=20180530001206')
Stock.create(name: 'SIG Sauer telescoping MCX/MPX stock', recoil: 29, ergonomics: 10, dealer_id: 6, price: 5420, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d8/MCX-MPX_Telescoping_stock_Icon.png/revision/latest/scale-to-width-down/127?cb=20201228212222')
Stock.create(name: 'Maxim Defence CQB collapsing/telescoping MCX/MPX stock', recoil: 30, ergonomics: 15, dealer_id: 5, price: 4662, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/66/MD_CQB_Icon.png/revision/latest/scale-to-width-down/127?cb=20190414152029')
Stock.create(name: 'MOE Carbine stock', recoil: 30, ergonomics: 8, dealer_id: 5, price: 7938, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/87/MOE_Stock_Icon.gif/revision/latest/scale-to-width-down/127?cb=20180805205028')
Stock.create(name: 'PMM "ULSS" foldable MCX/MPX stock', recoil: 33, ergonomics: 3, dealer_id: 5, price: 7560, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/03/PMM_ULSS_foldable_MCXMPX_stock_icon.png/revision/latest/scale-to-width-down/127?cb=20190411011159')
Stock.create(name: 'Promag Archangel polymer stock for M700', recoil: 36, ergonomics: 28, dealer_id: 6, price: 23520, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/cb/Promag_Archangel_polymer_stock_for_M700_icon.png/revision/latest/scale-to-width-down/190?cb=20200209203805')
Stock.create(name: 'Magpul PRS 2 polymer stock for FAL', recoil: 34, ergonomics: 16, dealer_id: 5, price: 19656, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/42/PRS2_FAL_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923102105')
Stock.create(name: 'Magpul PRS GEN3 stock', recoil: 34, ergonomics: 3, dealer_id: 5, price: 22806, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/81/PRSG3BLK_Icon.png/revision/latest/scale-to-width-down/127?cb=20191216172805')
Stock.create(name: 'Zenit PT-3 "Klassika" stock', recoil: 38, ergonomics: 11, dealer_id: 4, price: 22950, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4f/Pt3stockicon.png/revision/latest/scale-to-width-down/127?cb=20190517213245')
Stock.create(name: 'Izhmash SOK-12 AK type stock', recoil: 34, ergonomics: 6, dealer_id: 8, price: 1745, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e7/Saiga12stockicon.png/revision/latest/scale-to-width-down/127?cb=20180326123522')
Stock.create(name: 'High Standard M4SS Stock', recoil: 27, ergonomics: 4, dealer_id: 5, price: 3780, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d8/Standardm4ssstockicon.png/revision/latest/scale-to-width-down/127?cb=20200510213103')
Stock.create(name: 'VPO-101 SVD style stock', recoil: 42, ergonomics: 21, dealer_id: 8, price: 5670, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/79/SVDStyleStockIcon.png/revision/latest/scale-to-width-down/253?cb=20201019182824')
Stock.create(name: 'SIG Sauer Thin lightweight MCX/MPX stock', recoil: 31, ergonomics: 5, dealer_id: 4, price: 7935, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f2/Thin_Lightweight_MCX_Icon.png/revision/latest/scale-to-width-down/127?cb=20201227040648')
Stock.create(name: 'Fab Defense UAS for AK', recoil: 38, ergonomics: 16, dealer_id: 4, price: 18489, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/23/UASAK_Icon.png/revision/latest/scale-to-width-down/127?cb=20180727191823')
Stock.create(name: 'UBR GEN2 stock', recoil: 33, ergonomics: 7, dealer_id: 5, price: 13608, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7b/UBR_GEN2_Icon.gif/revision/latest/scale-to-width-down/127?cb=20180805213602')
Stock.create(name: 'TSNIITochMash AS VAL stock', recoil: 30, ergonomics: 8, dealer_id: 1, price: 3391, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f8/Valstockicon.png/revision/latest/scale-to-width-down/127?cb=20180326123531')
Stock.create(name: 'KRISSVector Gen.2 folding stock', recoil: 31, ergonomics: 7, dealer_id: 4, price: 7038, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/68/Vector_stock_icon.png/revision/latest/scale-to-width-down/127?cb=20210107165616')
Stock.create(name: 'Strike Industries Viper Mod 1 stock', recoil: 30, ergonomics: 11, dealer_id: 6, price: 9520, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1b/Viperstockicon.png/revision/latest/scale-to-width-down/127?cb=20190419202132')
Stock.create(name: 'Molot wooden VPO-136 stock', recoil: 33, ergonomics: 3, dealer_id: 4, price: 2098, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7a/Vpo136sstockicon.png/revision/latest/scale-to-width-down/127?cb=20190517230328')
Stock.create(name: 'Molot wooden VPO-209 stock', recoil: 33, ergonomics: 3, dealer_id: 8, price: 1911, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/24/Vpo209stockicon.png/revision/latest/scale-to-width-down/127?cb=20190517230340')
Stock.create(name: 'TSNIITochMash VSS Vintorez stock', recoil: 33, ergonomics: 15, dealer_id: 1, price: 1947, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/32/Vssstockicon.png/revision/latest/scale-to-width-down/127?cb=20180326124136')
Stock.create(name: 'Zenit PT-1 "Klassika" stock', recoil: 37, ergonomics: 9, dealer_id: 4, price: 13522, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3d/Zenit_PT-1_Klassika_stock_icon.png/revision/latest/scale-to-width-down/127?cb=20180721205715')
Stock.create(name: 'Zhukov-S for AK', recoil: 40, ergonomics: 15, dealer_id: 5, price: 22554, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8f/ZhukovS_Icon.png/revision/latest/scale-to-width-down/127?cb=20180801132653')

puts "seeding stock_buffer_tubes..."

StockBufferTube.create(stock_id: 22, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 13, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 8, buffer_tube_id: 1)
StockBufferTube.create(stock_id: 22, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 37, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 2)
StockBufferTube.create(stock_id: 22, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 37, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 3)
StockBufferTube.create(stock_id: 1, buffer_tube_id: 4)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 4)
StockBufferTube.create(stock_id: 22, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 37, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 5)
StockBufferTube.create(stock_id: 22, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 37, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 6)
StockBufferTube.create(stock_id: 22, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 37, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 7)
StockBufferTube.create(stock_id: 22, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 23, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 24, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 41, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 27, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 4, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 29, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 34, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 10, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 48, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 37, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 38, buffer_tube_id: 8)
StockBufferTube.create(stock_id: 52, buffer_tube_id: 9)
StockBufferTube.create(stock_id: 39, buffer_tube_id: 9)
StockBufferTube.create(stock_id: 52, buffer_tube_id: 10)
StockBufferTube.create(stock_id: 39, buffer_tube_id: 10)

puts "seeding weapon_stocks..."

WeaponStock.create(weapon_id: 7, stock_id: 2)
WeaponStock.create(weapon_id: 9, stock_id: 2)
WeaponStock.create(weapon_id: 10, stock_id: 2)
WeaponStock.create(weapon_id: 11, stock_id: 2)
WeaponStock.create(weapon_id: 30, stock_id: 2)
WeaponStock.create(weapon_id: 31, stock_id: 2)
WeaponStock.create(weapon_id: 2, stock_id: 3)
WeaponStock.create(weapon_id: 3, stock_id: 3)
WeaponStock.create(weapon_id: 4, stock_id: 3)
WeaponStock.create(weapon_id: 5, stock_id: 3)
WeaponStock.create(weapon_id: 6, stock_id: 3)
WeaponStock.create(weapon_id: 8, stock_id: 3)
WeaponStock.create(weapon_id: 14, stock_id: 5)
WeaponStock.create(weapon_id: 15, stock_id: 5)
WeaponStock.create(weapon_id: 16, stock_id: 5)
WeaponStock.create(weapon_id: 17, stock_id: 5)
WeaponStock.create(weapon_id: 18, stock_id: 5)
WeaponStock.create(weapon_id: 61, stock_id: 6)
WeaponStock.create(weapon_id: 68, stock_id: 7)
WeaponStock.create(weapon_id: 26, stock_id: 11)
WeaponStock.create(weapon_id: 29, stock_id: 11)
WeaponStock.create(weapon_id: 1, stock_id: 14)
WeaponStock.create(weapon_id: 24, stock_id: 14)
WeaponStock.create(weapon_id: 26, stock_id: 14)
WeaponStock.create(weapon_id: 29, stock_id: 14)
WeaponStock.create(weapon_id: 64, stock_id: 14)
WeaponStock.create(weapon_id: 28, stock_id: 15)
WeaponStock.create(weapon_id: 28, stock_id: 16)
WeaponStock.create(weapon_id: 28, stock_id: 17)
WeaponStock.create(weapon_id: 28, stock_id: 18)
WeaponStock.create(weapon_id: 43, stock_id: 19)
WeaponStock.create(weapon_id: 43, stock_id: 20)
WeaponStock.create(weapon_id: 7, stock_id: 28)
WeaponStock.create(weapon_id: 9, stock_id: 28)
WeaponStock.create(weapon_id: 10, stock_id: 28)
WeaponStock.create(weapon_id: 11, stock_id: 28)
WeaponStock.create(weapon_id: 30, stock_id: 28)
WeaponStock.create(weapon_id: 31, stock_id: 28)
WeaponStock.create(weapon_id: 1, stock_id: 30)
WeaponStock.create(weapon_id: 24, stock_id: 30)
WeaponStock.create(weapon_id: 26, stock_id: 30)
WeaponStock.create(weapon_id: 29, stock_id: 30)
WeaponStock.create(weapon_id: 54, stock_id: 31)
WeaponStock.create(weapon_id: 27, stock_id: 32)
WeaponStock.create(weapon_id: 42, stock_id: 33)
WeaponStock.create(weapon_id: 42, stock_id: 35)
WeaponStock.create(weapon_id: 68, stock_id: 36)
WeaponStock.create(weapon_id: 28, stock_id: 37)
WeaponStock.create(weapon_id: 58, stock_id: 40)
WeaponStock.create(weapon_id: 34, stock_id: 42)
WeaponStock.create(weapon_id: 27, stock_id: 43)
WeaponStock.create(weapon_id: 7, stock_id: 44)
WeaponStock.create(weapon_id: 9, stock_id: 44)
WeaponStock.create(weapon_id: 10, stock_id: 44)
WeaponStock.create(weapon_id: 11, stock_id: 44)
WeaponStock.create(weapon_id: 30, stock_id: 44)
WeaponStock.create(weapon_id: 31, stock_id: 44)
WeaponStock.create(weapon_id: 1, stock_id: 45)
WeaponStock.create(weapon_id: 24, stock_id: 45)
WeaponStock.create(weapon_id: 26, stock_id: 45)
WeaponStock.create(weapon_id: 29, stock_id: 45)
WeaponStock.create(weapon_id: 63, stock_id: 45)
WeaponStock.create(weapon_id: 20, stock_id: 46)
WeaponStock.create(weapon_id: 51, stock_id: 47)
WeaponStock.create(weapon_id: 52, stock_id: 47)
WeaponStock.create(weapon_id: 7, stock_id: 49)
WeaponStock.create(weapon_id: 9, stock_id: 49)
WeaponStock.create(weapon_id: 10, stock_id: 49)
WeaponStock.create(weapon_id: 11, stock_id: 49)
WeaponStock.create(weapon_id: 30, stock_id: 49)
WeaponStock.create(weapon_id: 31, stock_id: 49)
WeaponStock.create(weapon_id: 7, stock_id: 50)
WeaponStock.create(weapon_id: 9, stock_id: 50)
WeaponStock.create(weapon_id: 10, stock_id: 50)
WeaponStock.create(weapon_id: 11, stock_id: 50)
WeaponStock.create(weapon_id: 30, stock_id: 50)
WeaponStock.create(weapon_id: 31, stock_id: 50)
WeaponStock.create(weapon_id: 66, stock_id: 51)
WeaponStock.create(weapon_id: 7, stock_id: 53)
WeaponStock.create(weapon_id: 9, stock_id: 53)
WeaponStock.create(weapon_id: 10, stock_id: 53)
WeaponStock.create(weapon_id: 11, stock_id: 53)
WeaponStock.create(weapon_id: 30, stock_id: 53)
WeaponStock.create(weapon_id: 31, stock_id: 53)

puts "seeding muzzle adapters..."

MuzzleAdapter.create(name: 'Taktika Tula AK and AKM adapter', recoil: 0, ergonomics: 0, dealer_id: 4, price: 708, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/ff/Ttakm.png/revision/latest/scale-to-width-down/64?cb=20180828160747')
MuzzleAdapter.create(name: 'Direct Thread Mount adapter for Gemtech ONE.', recoil: 0, ergonomics: 0, dealer_id: 5, price: 4914, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9e/ONE_Mount_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414145640')
MuzzleAdapter.create(name: 'ME Cylinder muzzle adapter 12 ga', recoil: 0, ergonomics: -1, dealer_id: 8, price: 2258, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8e/Mecylindermuzzleadapter12gicon.png/revision/latest/scale-to-width-down/64?cb=20190106154142')
MuzzleAdapter.create(name: '3 Lug threaded protector', recoil: 0, ergonomics: -1, dealer_id: 6, price: 3327, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/50/3LugThreadedProtectoricon.png/revision/latest/scale-to-width-down/64?cb=20190105181817')
MuzzleAdapter.create(name: 'SilencerCo choke adapter for 12ga shotguns', recoil: 1, ergonomics: 0, dealer_id: 6, price: 1344, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7a/SilencerCo_choke_adapter_for_12ga_shotguns_Icon.png/revision/latest/scale-to-width-down/64?cb=20200607090613')
MuzzleAdapter.create(name: 'SilencerCo Salvo 12 thread adapter', recoil: 1, ergonomics: 0, dealer_id: 6, price: 896, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/79/SilencerCo_Salvo_12_thread_adapter_Icon.png/revision/latest/scale-to-width-down/64?cb=20180805230910')
MuzzleAdapter.create(name: 'Direct Thread Mount adapter for Silencerco Hybrid 46.', recoil: 0, ergonomics: 0, dealer_id: 5, price: 5796, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/17/Hybridmount.png/revision/latest/scale-to-width-down/64?cb=20180325142252')
MuzzleAdapter.create(name: '3 Lug thread protector', recoil: 0, ergonomics: 1, dealer_id: 5, price: 3402, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5c/3lug.png/revision/latest/scale-to-width-down/64?cb=20180325142246')
MuzzleAdapter.create(name: 'Mosin Weapon Tuning thread adapter', recoil: 0, ergonomics: 0, dealer_id: 8, price: 1943, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/74/Weapon_Tuning_Mosin_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226191216')
MuzzleAdapter.create(name: 'Weapon Tuning SKS tread adapter', recoil: 0, ergonomics: 0, dealer_id: 8, price: 1995, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a1/Weapon_Tuning_SKS_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226191219')
MuzzleAdapter.create(name: 'Direct Thread adapter for the Lantac Blast mitigation device.', recoil: 1, ergonomics: -1, dealer_id: 5, price: 4158, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9c/Lantac_BMD_Adapter_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226191223')
MuzzleAdapter.create(name: 'Custom Mosin rifle thread adapter', recoil: 0, ergonomics: 0, dealer_id: 8, price: 1575, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9d/Custom_Mosin_Thread_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226191226')
MuzzleAdapter.create(name: 'Tiger Rock Mosin rifle tread adapter', recoil: 1, ergonomics: 0, dealer_id: 8, price: 3098, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2a/Tiger_Rock_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226191229')
MuzzleAdapter.create(name: 'M700 thread protection cap', recoil: 0, ergonomics: 1, dealer_id: 6, price: 672, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0d/M700_thread_PT_CAP_Icon.gif/revision/latest/scale-to-width-down/64?cb=20200407180036')
MuzzleAdapter.create(name: 'Rotor 43 thread adapter for SVD-S', recoil: 0, ergonomics: -1, dealer_id: 6, price: 2016, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/76/Rotor_43_thread_adapter_for_SVD-S_icon.png/revision/latest/scale-to-width-down/64?cb=20191230170929')
MuzzleAdapter.create(name: 'B&T adapter for MP9 regular suppressor.', recoil: 0, ergonomics: -1, dealer_id: 6, price: 4872, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1e/B%26T_adapter_for_MP9_regular_supressor_icon.png/revision/latest/scale-to-width-down/64?cb=20191230174046')
MuzzleAdapter.create(name: 'CNC Warrior AK 5.56x45 mm muzzle device adapter', recoil: 0, ergonomics: 0, dealer_id: 6, price: 2929, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d1/CNC_Warrior_Icon.png/revision/latest/scale-to-width-down/64?cb=20200316180209')
MuzzleAdapter.create(name: 'RFB thread spacer', recoil: 0, ergonomics: 0, dealer_id: 5, price: 2772, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/75/RFB_Thread_Spacer_Icon.png/revision/latest/scale-to-width-down/64?cb=20201019205303')
MuzzleAdapter.create(name: 'SIG Taper-LOK Muzzle Adapter', recoil: 0, ergonomics: 0, dealer_id: 4, price: 4865, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/bd/Tlok_icon.png/revision/latest/scale-to-width-down/64?cb=20210109173854')
MuzzleAdapter.create(name: 'Direct Thread Mount adapter for Silencerco Omega 45k', recoil: 0, ergonomics: 0, dealer_id: 6, price: 4200, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/63/Omega_thread_icon.png/revision/latest/scale-to-width-down/64?cb=20201224200504')


puts "seeding MuzzleAdapterBarrels..."

MuzzleAdapterBarrel.create(barrel_id: 18, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 7, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 16, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 41, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 15, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 6, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 21, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 17, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 24, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 25, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 13, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 14, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 49, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 50, muzzle_adapter_id: 2)
MuzzleAdapterBarrel.create(barrel_id: 45, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 22, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 27, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 28, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 29, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 30, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 31, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 32, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 33, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 34, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 35, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 36, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 37, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 38, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 39, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 40, muzzle_adapter_id: 3)
MuzzleAdapterBarrel.create(barrel_id: 45, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 22, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 27, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 28, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 29, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 30, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 31, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 32, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 33, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 34, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 35, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 36, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 37, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 38, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 39, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 40, muzzle_adapter_id: 5)
MuzzleAdapterBarrel.create(barrel_id: 2, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 13, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 16, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 5, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 14, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 17, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 21, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 50, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 15, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 7, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 49, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 18, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 41, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 19, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 4, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 24, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 25, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 6, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 3, muzzle_adapter_id: 7)
MuzzleAdapterBarrel.create(barrel_id: 10, muzzle_adapter_id: 9)
MuzzleAdapterBarrel.create(barrel_id: 16, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 17, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 18, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 21, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 41, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 49, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 7, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 19, muzzle_adapter_id: 11)
MuzzleAdapterBarrel.create(barrel_id: 10, muzzle_adapter_id: 12)
MuzzleAdapterBarrel.create(barrel_id: 10, muzzle_adapter_id: 13)
MuzzleAdapterBarrel.create(barrel_id: 7, muzzle_adapter_id: 14)
MuzzleAdapterBarrel.create(barrel_id: 49, muzzle_adapter_id: 14)
MuzzleAdapterBarrel.create(barrel_id: 54, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 53, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 21, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 49, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 52, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 7, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 41, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 51, muzzle_adapter_id: 19)
MuzzleAdapterBarrel.create(barrel_id: 57, muzzle_adapter_id: 20)
MuzzleAdapterBarrel.create(barrel_id: 58, muzzle_adapter_id: 20)

puts "seeding WeaponMuzzleAdapters..."

WeaponMuzzleAdapter.create(weapon_id: 10, muzzle_adapter_id: 1)
WeaponMuzzleAdapter.create(weapon_id: 11, muzzle_adapter_id: 1)
WeaponMuzzleAdapter.create(weapon_id: 12, muzzle_adapter_id: 1)
WeaponMuzzleAdapter.create(weapon_id: 13, muzzle_adapter_id: 1)
WeaponMuzzleAdapter.create(weapon_id: 31, muzzle_adapter_id: 1)
WeaponMuzzleAdapter.create(weapon_id: 58, muzzle_adapter_id: 6)
WeaponMuzzleAdapter.create(weapon_id: 2, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 3, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 4, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 5, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 6, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 7, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 8, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 9, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 10, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 11, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 12, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 13, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 14, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 15, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 16, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 17, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 18, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 44, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 49, muzzle_adapter_id: 7)
WeaponMuzzleAdapter.create(weapon_id: 32, muzzle_adapter_id: 10)
WeaponMuzzleAdapter.create(weapon_id: 33, muzzle_adapter_id: 10)
WeaponMuzzleAdapter.create(weapon_id: 40, muzzle_adapter_id: 16)
WeaponMuzzleAdapter.create(weapon_id: 41, muzzle_adapter_id: 16)
WeaponMuzzleAdapter.create(weapon_id: 2, muzzle_adapter_id: 17)
WeaponMuzzleAdapter.create(weapon_id: 3, muzzle_adapter_id: 17)

puts "seeding chargin handles..."

ChargingHandle.create(name: 'Geissele "SCH" charging handle for MPX', ergonomics: 2, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/35/SCH_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414152756')
ChargingHandle.create(name: 'ADAR 2-15 charging handle', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/70/ADAR2-15ChargingHandleicon.png/revision/latest/scale-to-width-down/64?cb=20200501131458')
ChargingHandle.create(name: 'HK Extended latch Charging Handle', ergonomics: 1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/76/Hkchargehandleicon.png/revision/latest/scale-to-width-down/64?cb=20190106142114')
ChargingHandle.create(name: 'AK Zenit RP-1 charging handle', ergonomics: 1, dealer_id: 4, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f8/Rp-1icon.png/revision/latest/scale-to-width-down/64?cb=20190517213214')
ChargingHandle.create(name: 'Badger Ordnance Tactical Charging Handle Latch	', ergonomics: 1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/21/Botlicon.png/revision/latest/scale-to-width-down/64?cb=20190517230354')
ChargingHandle.create(name: 'Raptor charging handle for AR-15', ergonomics: 3, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9c/Raptor_charging_handle_for_AR-15_icon.gif/revision/latest/scale-to-width-down/64?cb=20200326203222')
ChargingHandle.create(name: 'AR-15 charging handle', ergonomics: 0, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/06/Ar15handleicon.png/revision/latest/scale-to-width-down/64?cb=20190517230529')
ChargingHandle.create(name: 'MP5 Cocking Handle', ergonomics: 0, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/da/Mp5handleicon.png/revision/latest/scale-to-width-down/64?cb=20180325183003')
ChargingHandle.create(name: 'SIG double latch charging handle for MPX', ergonomics: 1, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4f/Mpxdoublelatchicon.png/revision/latest/scale-to-width-down/64?cb=20180817232156')
ChargingHandle.create(name: 'SIG single latch charging handle for MPX', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/54/Mpxhandleicon.png/revision/latest/scale-to-width-down/64?cb=20180325183004')
ChargingHandle.create(name: 'FN charge handle for P90', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d1/FN_charge_handle_for_P90_Icon.png/revision/latest/scale-to-width-down/64?cb=20200502195625')
ChargingHandle.create(name: 'K&M The Handler charge handle for P90', ergonomics: 1, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d0/K%26M_The_Handler_charge_handle_for_P90_icon.png/revision/latest/scale-to-width-down/64?cb=20200104162411')
ChargingHandle.create(name: 'MP5 Kurz Cocking Handle', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/91/MP5_Kurz_Cocking_Handle_icon.png/revision/latest/scale-to-width-down/64?cb=20191119102407')
ChargingHandle.create(name: 'KAC Ambidextrous Charging Handle for AR-10', ergonomics: 1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ee/KAC_Ambidextrous_Charging_Handle_for_AR-10_icon.png/revision/latest/scale-to-width-down/64?cb=20191229110146')
ChargingHandle.create(name: 'B&T charging handle for MP9', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9d/B%26T_charging_handle_for_MP9_icon.png/revision/latest/scale-to-width-down/64?cb=20191229111139')
ChargingHandle.create(name: 'KAC Charging Handle for SR-25', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/95/KAC_Charging_Handle_for_SR-25_icon.png/revision/latest/scale-to-width-down/64?cb=20191229112436')
ChargingHandle.create(name: 'Geissele ACH charging handle for AR-15', ergonomics: 2, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6d/ACH_Charging_handle_Icon.png/revision/latest/scale-to-width-down/64?cb=20200921203921')
ChargingHandle.create(name: 'Avalanche Mod.2 charging handle for AR-15', ergonomics: 3, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/48/Avalanche_Mod.2_charging_handle_for_AR-15_icon.png/revision/latest/scale-to-width-down/64?cb=20201020135542')
ChargingHandle.create(name: 'Sig-Sauer charging handle for MCX', ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/be/MCX_Charging_Handle_Icon.png/revision/latest/scale-to-width-down/64?cb=20201228212218')
ChargingHandle.create(name: 'MASP Ambi battle charging handle for AR-15', ergonomics: 1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ed/MASP_CHar_Icon.png/revision/latest/scale-to-width-down/64?cb=20210330191231')

puts "seeding chargin handle weapons..."

WeaponChargingHandle.create(weapon_id: 42, charging_handle_id: 1)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 2)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 2)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 2)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 3)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 3)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 3)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 3)
WeaponChargingHandle.create(weapon_id: 2, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 3, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 4, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 5, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 6, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 7, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 8, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 9, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 10, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 11, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 12, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 13, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 14, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 15, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 16, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 17, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 18, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 20, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 30, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 31, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 35, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 49, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 58, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 66, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 44, charging_handle_id: 4)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 5)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 5)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 5)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 5)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 6)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 6)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 6)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 6)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 7)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 7)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 7)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 7)
WeaponChargingHandle.create(weapon_id: 36, charging_handle_id: 8)
WeaponChargingHandle.create(weapon_id: 42, charging_handle_id: 9)
WeaponChargingHandle.create(weapon_id: 42, charging_handle_id: 10)
WeaponChargingHandle.create(weapon_id: 43, charging_handle_id: 11)
WeaponChargingHandle.create(weapon_id: 43, charging_handle_id: 12)
WeaponChargingHandle.create(weapon_id: 37, charging_handle_id: 13)
WeaponChargingHandle.create(weapon_id: 64, charging_handle_id: 14)
WeaponChargingHandle.create(weapon_id: 40, charging_handle_id: 15)
WeaponChargingHandle.create(weapon_id: 41, charging_handle_id: 15)
WeaponChargingHandle.create(weapon_id: 64, charging_handle_id: 16)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 17)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 17)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 17)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 18)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 18)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 18)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 18)
WeaponChargingHandle.create(weapon_id: 27, charging_handle_id: 19)
WeaponChargingHandle.create(weapon_id: 1, charging_handle_id: 20)
WeaponChargingHandle.create(weapon_id: 24, charging_handle_id: 20)
WeaponChargingHandle.create(weapon_id: 26, charging_handle_id: 20)
WeaponChargingHandle.create(weapon_id: 29, charging_handle_id: 20)

puts "seeding muzzles..."


Muzzle.create(name: 'Izhmash 7.62x39 AKM muzzle brake & compensator (6P1 0-14)', recoil: 7, ergonomics: 0, dealer_id: 6, price: 681, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/ba/6p1.png/revision/latest/scale-to-width-down/64?cb=20180729200314')
Muzzle.create(name: 'KAC QD Compensator 5.56x45', recoil: 8, ergonomics: -1, dealer_id: 5, price: 6678, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1e/Kac.png/revision/latest/scale-to-width-down/64?cb=20180319232317')
Muzzle.create(name: 'Izhmash 7.62x39 flash hider for AKML system', recoil: 5, ergonomics: 2, dealer_id: 1, price: 661, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/bd/Akml.png/revision/latest/scale-to-width-down/64?cb=20180319232304')
Muzzle.create(name: 'AAC Blackout 51T flash hider (7.62x51)', recoil: 7, ergonomics: -1, dealer_id: 5, price: 5166, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8e/Blackout.png/revision/latest/scale-to-width-down/64?cb=20190706232524')
Muzzle.create(name: 'Lantac Dragon 7.62x39 muzzle brake & compensator for AK', recoil: 18, ergonomics: -2, dealer_id: 4, price: 14145, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/cf/LantacDrakonIcon.png/revision/latest/scale-to-width-down/64?cb=20190415133928')
Muzzle.create(name: 'AR-15 SAI JailBrake 5.56x45 muzzle device', recoil: 8, ergonomics: -2, dealer_id: 4, price: 23538, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/85/SAIJailBreakIcon.png/revision/latest/scale-to-width-down/64?cb=20190415133948')
Muzzle.create(name: 'AAC Blackout 51T 5.56x45 flash-hider', recoil: 8, ergonomics: -1, dealer_id: 5, price: 8820, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4f/Blackout_5_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414143646')
Muzzle.create(name: 'Thread adapter 7.62x54 for SV-98', recoil: 0, ergonomics: -2, dealer_id: 1, price: 5251, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d8/SV-98_Thread_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414153433')
Muzzle.create(name: 'Surefire WarComp 5.56x45 Flash hider for AR-15', recoil: 7, ergonomics: -1, dealer_id: 4, price: 5520, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9d/WarCompIcon.png/revision/latest/scale-to-width-down/64?cb=20190411110720')
Muzzle.create(name: 'Lantac Dragon 7.62x51 muzzle brake', recoil: 15, ergonomics: -2, dealer_id: 5, price: 15246, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5d/DGN762_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414142537')
Muzzle.create(name: 'Izhmash 7.62x54 SVDS muzzlebrake & compensator', recoil: 7, ergonomics: -1, dealer_id: 1, price: 657, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ab/Izhmash_7.62x54_SVDS_muzzlebrake_%26_compensator_icon.png/revision/latest/scale-to-width-down/64?cb=20190410225632')
Muzzle.create(name: 'SRVV "Mk.2.0" compensator 7.62x54 for SV-98', recoil: 19, ergonomics: -2, dealer_id: 6, price: 8736, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9b/Muzzle_break_SRVV_for_SV-98_icon.png/revision/latest/scale-to-width-down/64?cb=20190414000907')
Muzzle.create(name: 'Venom Antidote muzzle brake & compensator for AK', recoil: 17, ergonomics: -2, dealer_id: 4, price: 11328, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f9/Antidote_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414150947')
Muzzle.create(name: 'Surefire SF3P 5.56x45 Flash hider for AR-15', recoil: 8, ergonomics: -1, dealer_id: 6, price: 7191, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/95/SF3P_Icon.png/revision/latest/scale-to-width-down/64?cb=20190414143206')
Muzzle.create(name: 'HK Noveske style muzzle brake & compensator for MP-5', recoil: 15, ergonomics: -3, dealer_id: 6, price: 9968, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/af/HKNoveskeMP5icon.png/revision/latest/scale-to-width-down/64?cb=20190104000816')
Muzzle.create(name: 'Noveske KX3 5.56x45 flash hider', recoil: 7, ergonomics: -2, dealer_id: 6, price: 8106, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/23/Kx3.png/revision/latest/scale-to-width-down/64?cb=20180319232320')
Muzzle.create(name: 'Muzzle brake Odin Works Atlas-7 7.62x51 for AR-10', recoil: 14, ergonomics: -1, dealer_id: 6, price: 11629, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d6/OdinMuzzleIcon.png/revision/latest/scale-to-width-down/64?cb=20181119192049')
Muzzle.create(name: 'Tacfire Tanker style muzzle brake for Mosin rifle', recoil: 13, ergonomics: -3, dealer_id: 8, price: 7512, image: 'Tacfire Tanker style muzzle brake for Mosin rifle')
Muzzle.create(name: 'HK A1 4.6x30 Flash hider for MP7', recoil: 5, ergonomics: -1, dealer_id: 6, price: 1021, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f0/MP7FlashHiderIcon.png/revision/latest/scale-to-width-down/64?cb=20181111230228')
Muzzle.create(name: 'SA-58 7.62x51 Austrian style muzzle brake', recoil: 11, ergonomics: -1, dealer_id: 6, price: 2620, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ab/FAL_Austrian_Muzzle_Icon.png/revision/latest/scale-to-width-down/64?cb=20180923091853')
Muzzle.create(name: 'Compensator 2A "X3" 7.62x51 for AR-10', recoil: 9, ergonomics: -1, dealer_id: 6, price: 8756, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/64/2A_X3_Icon.png/revision/latest/scale-to-width-down/64?cb=20180923101718')
Muzzle.create(name: 'Phantom 7.62x51 muzzle brake & compensator for M14', recoil: 8, ergonomics: -1, dealer_id: 6, price: 7267, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1f/Phantomicon.png/revision/latest/scale-to-width-down/64?cb=20180513163753')
Muzzle.create(name: 'Vortex DC 7.62x51 muzzle brake & compensator for M14', recoil: 5, ergonomics: -1, dealer_id: 6, price: 7000, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c1/Vortexicon.png/revision/latest/scale-to-width-down/64?cb=20180513163757')
Muzzle.create(name: 'M14 JP Enterprises 7.62x51 tactical muzzle brake & compensator', recoil: 15, ergonomics: -2, dealer_id: 6, price: 10576, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ed/Jpmuzzlem1icon.png/revision/latest/scale-to-width-down/64?cb=20180611020200')
Muzzle.create(name: 'Good Iron 7.62x51 muzzle brake & compensator for M14', recoil: 10, ergonomics: -1, dealer_id: 6, price: 9009, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d2/GoodIronIcon.png/revision/latest/scale-to-width-down/64?cb=20180513163749')
Muzzle.create(name: 'Izhmash 5.45x39 AK-74 muzzle brake & compensator (6P20 0-20)', recoil: 10, ergonomics: -2, dealer_id: 1, price: 756, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/49/6p20.png/revision/latest/scale-to-width-down/64?cb=20180325142247')
Muzzle.create(name: 'Zenit DTK-1 7.62x39 & 5.45x39 muzzle brake & compensator for AK', recoil: 13, ergonomics: -2, dealer_id: 4, price: 4865, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e4/DTK-1.png/revision/latest/scale-to-width-down/64?cb=20190517230229')
Muzzle.create(name: 'Izhmash 5.45x39 muzzle brake for AKS-74U (6P26 0-20)', recoil: 8, ergonomics: -2, dealer_id: 1, price: 784, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a4/6P26.png/revision/latest/scale-to-width-down/64?cb=20180325193826')
Muzzle.create(name: 'Colt USGI A2 5.56x45 Flash hider for AR-15', recoil: 7, ergonomics: -1, dealer_id: 6, price: 1501, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7c/Usgia2.png/revision/latest/scale-to-width-down/64?cb=20190517230427')
Muzzle.create(name: 'PWS CQB 5.56 x 45 Muzzle brake', recoil: 12, ergonomics: -2, dealer_id: 4, price: 11489, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a1/Pwsm4.png/revision/latest/scale-to-width-down/64?cb=20180325142257')
Muzzle.create(name: 'Muzzle brake Vendetta precision VP-09 5.56x45', recoil: 9, ergonomics: -2, dealer_id: 6, price: 12474, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/24/Vpo09.png/revision/latest/scale-to-width-down/64?cb=20180325142305')
Muzzle.create(name: 'Izhmash 9x19 Saiga-9 muzzle brake/compensator', recoil: 7, ergonomics: -2, dealer_id: 8, price: 525, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a9/Saiga9muz.png/revision/latest/scale-to-width-down/64?cb=20190517224318')
Muzzle.create(name: 'PWS CQB 74 5.45x39 Muzzle brake', recoil: 15, ergonomics: -3, dealer_id: 4, price: 15615, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/04/Pws74.png/revision/latest/scale-to-width-down/64?cb=20180325142256')
Muzzle.create(name: 'DVL-10 muzzle device', recoil: 12, ergonomics: -3, dealer_id: 4, price: 6031, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3b/DVL-10_MD.png/revision/latest/scale-to-width-down/64?cb=20180325194045')
Muzzle.create(name: 'Tromix Monster Claw 12ga muzzle brake', recoil: 24, ergonomics: -5, dealer_id: 6, price: 9854, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ae/12gamonster.png/revision/latest/scale-to-width-down/64?cb=20180325142247')
Muzzle.create(name: 'GK-02 Muzzle Brake', recoil: 14, ergonomics: -1, dealer_id: 8, price: 4249, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f4/Gk02.png/revision/latest/scale-to-width-down/64?cb=20190517230414')
Muzzle.create(name: 'Remington Tactical Choke 12ga', recoil: 8, ergonomics: 0, dealer_id: 4, price: 3201, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/fd/Choke12ga.png/revision/latest/scale-to-width-down/64?cb=20190517213058')
Muzzle.create(name: 'Socom 16 7.62x51 muzzle brake & compensator for M1A (threaded)', recoil: 3, ergonomics: -1, dealer_id: 6, price: 5499, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a0/Socom16thicon.png/revision/latest/scale-to-width-down/64?cb=20180529235118')
Muzzle.create(name: 'Spike tactical dynacomp 7.62x39 muzzle brake & compensator for AK', recoil: 11, ergonomics: -3, dealer_id: 6, price: 4368, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/81/Dynacompicon.png/revision/latest/scale-to-width-down/64?cb=20180506165454')
Muzzle.create(name: 'Fortis Red Brake 7.62x51 muzzle brake for AR-10', recoil: 15, ergonomics: -1, dealer_id: 6, price: 16016, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8c/RedBrakeIcon.png/revision/latest/scale-to-width-down/64?cb=20191030045013')
Muzzle.create(name: 'ASh-12 regular muzzle brake 12.7x55', recoil: 24, ergonomics: -1, dealer_id: 1, price: 6649, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d4/Ash-12_MB_Icon.png/revision/latest/scale-to-width-down/64?cb=20191226184136')
Muzzle.create(name: 'FN P90 5.7x28 flash hider', recoil: 7, ergonomics: -1, dealer_id: 6, price: 1792, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d9/FN_P90_5.7x28_flash_hider_icon.png/revision/latest/scale-to-width-down/64?cb=20191119094847')
Muzzle.create(name: 'SRVV 5.45x39 AK-74 muzzle brake', recoil: 15, ergonomics: -2, dealer_id: 6, price: 6340, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/92/SRVV_5.45_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213230150')
Muzzle.create(name: 'SRVV 7.62x39 AK muzzle brake & compensator', recoil: 16, ergonomics: -2, dealer_id: 6, price: 6676, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4c/SRVV_7.62_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213230208')
Muzzle.create(name: 'TROY Claymore 5.56x45 muzzle brake for AR-15', recoil: 8, ergonomics: -2, dealer_id: 6, price: 8792, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/64/Claymore_Troy_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213235543')
Muzzle.create(name: 'Muzzle brake Keeno Arms SHREWD 7.62x51 for AR-10', recoil: 11, ergonomics: -1, dealer_id: 5, price: 14616, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/43/SHREWD_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213235600')
Muzzle.create(name: 'Muzzle brake Precision Armament M-11 7.62x51 for AR-10', recoil: 10, ergonomics: -1, dealer_id: 5, price: 11340, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/10/M-11_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213234112')
Muzzle.create(name: 'Carbine brake for SIG MPX by TACCOM', recoil: 12, ergonomics: -1, dealer_id: 5, price: 7182, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/dc/TACCOM_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213234049')
Muzzle.create(name: 'Bulletec ST-6012 5.56x45 Flash hider for AR-15', recoil: 14, ergonomics: -1, dealer_id: 6, price: 16532, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/93/ST-6012_Icon.PNG/revision/latest/scale-to-width-down/64?cb=20191102040348')
Muzzle.create(name: 'Lantac "Blast mitigation device" 7.62x51', recoil: 8, ergonomics: -3, dealer_id: 5, price: 11970, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/da/BMD_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213234101')
Muzzle.create(name: 'Nordic Corvette 7.62x51 muzzle brake for AR-10', recoil: 10, ergonomics: -1, dealer_id: 6, price: 9800, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/92/Corvette_7.62x51_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213232845')
Muzzle.create(name: 'Nordic Corvette 5.56x45 compensator for AR-15', recoil: 11, ergonomics: -1, dealer_id: 6, price: 9408, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/36/Corvette_5.56_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213232834')
Muzzle.create(name: 'Daniel Defense Wave Muzzle Brake 5.56x45', recoil: 9, ergonomics: -1, dealer_id: 6, price: 8938, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/16/Wave_MB_5.56_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213232913')
Muzzle.create(name: 'Daniel Defense Wave Muzzle Brake 7.62x51', recoil: 9, ergonomics: -1, dealer_id: 6, price: 10457, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/05/Wave_MB_7.62.png/revision/latest/scale-to-width-down/64?cb=20191213232859')
Muzzle.create(name: 'Thunder Beast 223CB Muzzle brake 5.56x45', recoil: 8, ergonomics: -2, dealer_id: 5, price: 8820, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b0/223CB_Icon.PNG/revision/latest/scale-to-width-down/64?cb=20191102035902')
Muzzle.create(name: 'Thunder Beast 30CB Muzzle Brake 7.62x51', recoil: 9, ergonomics: -1, dealer_id: 5, price: 8820, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d9/30_CB_Icon.png/revision/latest/scale-to-width-down/64?cb=20191213234031')
Muzzle.create(name: 'KAC QDC Flash suppressor kit 7.62x51 flash hider', recoil: 8, ergonomics: -1, dealer_id: 5, price: 7560, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/af/KAC_QDC_Flash_supressor_kit_7.62x51_flash_hider_icon.png/revision/latest/scale-to-width-down/64?cb=20191229113433')
Muzzle.create(name: 'Orsis T-5000M muzzle brake', recoil: 9, ergonomics: -1, dealer_id: 4, price: 5241, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/17/Orsis_T-5000M_muzzle_break_icon.png/revision/latest/scale-to-width-down/64?cb=20191229114317')
Muzzle.create(name: 'JMAC RRD-4C 7.62x39 muzzle brake for AKM type thread', recoil: 20, ergonomics: -2, dealer_id: 6, price: 14672, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/30/JMAC_RRD-4C_AKM_icon.png/revision/latest/scale-to-width-down/64?cb=20201020153403')
Muzzle.create(name: 'JMAC RRD-4C muzzle brake for AK-74 type thread', recoil: 19, ergonomics: -2, dealer_id: 6, price: 10304, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5d/JMAC_RRD-4C_AK-74_icon.png/revision/latest/scale-to-width-down/64?cb=20201020154536')
Muzzle.create(name: 'SilencerCo AC-858 ASR .338 LM Muzzle brake', recoil: 10, ergonomics: -2, dealer_id: 8, price: 8526, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/58/SilencerCo_AC-858_ASR_icon.png/revision/latest/scale-to-width-down/64?cb=20210127172326')
Muzzle.create(name: '3-prong SIG Flash hider 7.62x51', recoil: 5, ergonomics: -1, dealer_id: 5, price: 2268, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a6/3_Prong_SIG_Icon.png/revision/latest/scale-to-width-down/64?cb=20210107160738')
Muzzle.create(name: 'SIG micro brake muzzle brake 7.62x51', recoil: 6, ergonomics: -1, dealer_id: 4, price: 2691, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a6/Micro_thread_icon.png/revision/latest/scale-to-width-down/64?cb=20201224200502')
Muzzle.create(name: 'SIG Two Port brake muzzle brake 7.62x51', recoil: 8, ergonomics: -1, dealer_id: 5, price: 7056, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/26/SIG_Two_port_Icon.png/revision/latest/scale-to-width-down/64?cb=20210130113216')

puts "seeding WeaponMuzzles..."

WeaponMuzzle.create(weapon_id: 10, muzzle_id: 1)
WeaponMuzzle.create(weapon_id: 11, muzzle_id: 1)
WeaponMuzzle.create(weapon_id: 12, muzzle_id: 1)
WeaponMuzzle.create(weapon_id: 13, muzzle_id: 1)
WeaponMuzzle.create(weapon_id: 31, muzzle_id: 1)
WeaponMuzzle.create(weapon_id: 10, muzzle_id: 3)
WeaponMuzzle.create(weapon_id: 11, muzzle_id: 3)
WeaponMuzzle.create(weapon_id: 12, muzzle_id: 3)
WeaponMuzzle.create(weapon_id: 13, muzzle_id: 3)
WeaponMuzzle.create(weapon_id: 31, muzzle_id: 3)
WeaponMuzzle.create(weapon_id: 10, muzzle_id: 5)
WeaponMuzzle.create(weapon_id: 11, muzzle_id: 5)
WeaponMuzzle.create(weapon_id: 12, muzzle_id: 5)
WeaponMuzzle.create(weapon_id: 13, muzzle_id: 5)
WeaponMuzzle.create(weapon_id: 31, muzzle_id: 5)
WeaponMuzzle.create(weapon_id: 71, muzzle_id: 8)
WeaponMuzzle.create(weapon_id: 71, muzzle_id: 12)
WeaponMuzzle.create(weapon_id: 10, muzzle_id: 13)
WeaponMuzzle.create(weapon_id: 11, muzzle_id: 13)
WeaponMuzzle.create(weapon_id: 12, muzzle_id: 13)
WeaponMuzzle.create(weapon_id: 13, muzzle_id: 13)
WeaponMuzzle.create(weapon_id: 31, muzzle_id: 13)
WeaponMuzzle.create(weapon_id: 38, muzzle_id: 19)
WeaponMuzzle.create(weapon_id: 39, muzzle_id: 19)
WeaponMuzzle.create(weapon_id: 6, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 7, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 8, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 9, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 14, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 15, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 16, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 17, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 18, muzzle_id: 26)
WeaponMuzzle.create(weapon_id: 4, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 5, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 6, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 7, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 8, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 9, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 14, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 15, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 16, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 18, muzzle_id: 27)
WeaponMuzzle.create(weapon_id: 6, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 7, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 8, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 9, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 14, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 15, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 16, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 17, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 18, muzzle_id: 28)
WeaponMuzzle.create(weapon_id: 2, muzzle_id: 30)
WeaponMuzzle.create(weapon_id: 3, muzzle_id: 30)
WeaponMuzzle.create(weapon_id: 49, muzzle_id: 32)
WeaponMuzzle.create(weapon_id: 44, muzzle_id: 32)
WeaponMuzzle.create(weapon_id: 6, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 7, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 8, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 9, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 14, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 15, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 16, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 17, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 18, muzzle_id: 33)
WeaponMuzzle.create(weapon_id: 58, muzzle_id: 35)
WeaponMuzzle.create(weapon_id: 58, muzzle_id: 36)
WeaponMuzzle.create(weapon_id: 4, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 5, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 10, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 11, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 12, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 13, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 31, muzzle_id: 39)
WeaponMuzzle.create(weapon_id: 19, muzzle_id: 41)
WeaponMuzzle.create(weapon_id: 2, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 3, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 6, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 7, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 8, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 9, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 14, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 15, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 16, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 17, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 18, muzzle_id: 43)
WeaponMuzzle.create(weapon_id: 4, muzzle_id: 44)
WeaponMuzzle.create(weapon_id: 5, muzzle_id: 44)
WeaponMuzzle.create(weapon_id: 10, muzzle_id: 59)
WeaponMuzzle.create(weapon_id: 11, muzzle_id: 59)
WeaponMuzzle.create(weapon_id: 12, muzzle_id: 59)
WeaponMuzzle.create(weapon_id: 13, muzzle_id: 59)
WeaponMuzzle.create(weapon_id: 31, muzzle_id: 59)
WeaponMuzzle.create(weapon_id: 2, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 3, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 4, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 5, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 6, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 7, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 8, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 9, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 14, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 16, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 17, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 18, muzzle_id: 60)
WeaponMuzzle.create(weapon_id: 15, muzzle_id: 60)

puts "seeding MuzzleBarrels..."

# 5.56 weapons
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 2)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 2)

# 7.62x51 guns
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 4)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 4)

MuzzleBarrel.create(barrel_id: 1, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 7)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 9)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 10)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 14)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 16)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 17)
MuzzleBarrel.create(barrel_id: 10, muzzle_id: 18)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 20)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 20)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 20)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 21)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 22)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 23)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 24)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 25)
MuzzleBarrel.create(barrel_id: 11, muzzle_id: 26)
MuzzleBarrel.create(barrel_id: 12, muzzle_id: 26)
MuzzleBarrel.create(barrel_id: 11, muzzle_id: 27)
MuzzleBarrel.create(barrel_id: 12, muzzle_id: 27)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 29)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 30)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 31)
MuzzleBarrel.create(barrel_id: 11, muzzle_id: 33)
MuzzleBarrel.create(barrel_id: 12, muzzle_id: 33)
MuzzleBarrel.create(barrel_id: 23, muzzle_id: 34)
MuzzleBarrel.create(barrel_id: 45, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 22, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 27, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 28, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 29, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 30, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 31, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 32, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 33, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 34, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 35, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 36, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 37, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 38, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 39, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 40, muzzle_id: 37)
MuzzleBarrel.create(barrel_id: 20, muzzle_id: 38)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 40)
MuzzleBarrel.create(barrel_id: 46, muzzle_id: 42)
MuzzleBarrel.create(barrel_id: 11, muzzle_id: 43)
MuzzleBarrel.create(barrel_id: 12, muzzle_id: 43)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 45)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 46)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 47)
MuzzleBarrel.create(barrel_id: 4, muzzle_id: 48)
MuzzleBarrel.create(barrel_id: 5, muzzle_id: 48)
MuzzleBarrel.create(barrel_id: 3, muzzle_id: 48)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 49)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 51)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 52)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 53)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 54)
MuzzleBarrel.create(barrel_id: 1, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 13, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 14, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 15, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 24, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 25, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 6, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 50, muzzle_id: 55)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 56)
MuzzleBarrel.create(barrel_id: 16, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 17, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 52, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 21, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 49, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 51, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 7, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 18, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 41, muzzle_id: 57)
MuzzleBarrel.create(barrel_id: 19, muzzle_id: 57)

puts "seeding muzzle_muzzle_adapters..."

MuzzleAdapterMuzzle.create(muzzle_adapter_id: 27, muzzle_id: 1)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 44, muzzle_id: 1)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 60, muzzle_id: 1)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 36, muzzle_id: 3)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 35, muzzle_id: 3)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 15, muzzle_id: 4)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 15, muzzle_id: 8)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 44, muzzle_id: 9)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 60, muzzle_id: 9)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 27, muzzle_id: 10)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 44, muzzle_id: 10)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 10, muzzle_id: 11)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 50, muzzle_id: 11)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 1, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 3, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 5, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 39, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 44, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 13, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 59, muzzle_id: 12)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 21, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 4, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 54, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 57, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 46, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 10, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 51, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 17, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 47, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 56, muzzle_id: 13)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 7, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 49, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 29, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 53, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 2, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 31, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 52, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 16, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 30, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 14, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 9, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 55, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 45, muzzle_id: 17)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 62, muzzle_id: 19)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 63, muzzle_id: 19)
MuzzleAdapterMuzzle.create(muzzle_adapter_id: 64, muzzle_id: 19)

puts "seeding receivers..."

Receiver.create(name: 'Noveske Gen.3 5.56x45 Upper receiver for AR systems', recoil: 2, ergonomics: 13, dealer_id: 6, price: 28168, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/66/Noveskeuppericon.png/revision/latest/scale-to-width-down/127?cb=20190106133508')
Receiver.create(name: 'Izhmash regular dust cover for RPK-16', recoil: 0, ergonomics: 4, dealer_id: 1, price: 7848, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/f/f2/Izhmash_regual_dust_cover_for_RPK-16_icon.png/revision/latest/scale-to-width-down/127?cb=20181230160611')
Receiver.create(name: 'Upper receiver HK 416A5 5.56x45 for 416A5', recoil: 1, ergonomics: 6, dealer_id: 5, price: 7938, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/26/Hk416uppericon.png/revision/latest/scale-to-width-down/127?cb=20190106142303')
Receiver.create(name: 'Regular dust cover for FAL', recoil: 0, ergonomics: 2, dealer_id: 6, price: 2802, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/01/FAL_Dustcover_icon.png/revision/latest/scale-to-width-down/127?cb=20180923092054')
Receiver.create(name: 'DS Arms Extreme Duty dust cover for SA58', recoil: 0, ergonomics: 4, dealer_id: 6, price: 12957, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2b/SA58_DUST_Icon.png/revision/latest/scale-to-width-down/127?cb=20180804170616')
Receiver.create(name: 'Izhmash AK-74 dust cover (6P1 0-1)', recoil: 0, ergonomics: 5, dealer_id: 1, price: 1136, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d8/6p1_0-1akn.png/revision/latest/scale-to-width-down/127?cb=20180326162527')
Receiver.create(name: 'Izhmash AKM dust cover (6P1 0-1)', recoil: 0, ergonomics: 5, dealer_id: 1, price: 1106, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/68/6p1-01akm.png/revision/latest/scale-to-width-down/127?cb=20180326162528')
Receiver.create(name: 'Molot AKM type dust cover', recoil: 0, ergonomics: 5, dealer_id: 4, price: 1148, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/bd/Akmtype.png/revision/latest/scale-to-width-down/127?cb=20180326162531')
Receiver.create(name: 'AKS-74U Dust cover (6P26 Sb.7)', recoil: 0, ergonomics: 5, dealer_id: 1, price: 1306, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e6/6p26sb.7.png/revision/latest/scale-to-width-down/127?cb=20180326162529')
Receiver.create(name: 'Izhmash Vityaz receiver cover', recoil: 0, ergonomics: 5, dealer_id: 1, price: 1307, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3b/Rec.cov._vityaz.png/revision/latest/scale-to-width-down/127?cb=20180326162548')
Receiver.create(name: 'Izhmash SOK-12 Sb.0-2 dust cover', recoil: 0, ergonomics: 6, dealer_id: 8, price: 1255, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4b/Sb.0-2.png/revision/latest/scale-to-width-down/127?cb=20180326162551')
Receiver.create(name: 'AS VAL Dust cover', recoil: 0, ergonomics: 2, dealer_id: 1, price: 1766, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6a/Valdust.png/revision/latest/scale-to-width-down/127?cb=20180326162552')
Receiver.create(name: 'VSS Vintorez dust cover', recoil: 0, ergonomics: 2, dealer_id: 1, price: 1743, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ef/Vssdust.png/revision/latest/scale-to-width-down/127?cb=20180326162553')
Receiver.create(name: 'Zenit B-33 dust cover for AK-74', recoil: 1, ergonomics: 7, dealer_id: 4, price: 15582, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e4/B-33.png/revision/latest/scale-to-width-down/127?cb=20180831201510')
Receiver.create(name: 'Vltor MUR-1S 5.56x45 Upper receiver for AR systems', recoil: 4, ergonomics: 8, dealer_id: 5, price: 39690, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/48/Murupper.png/revision/latest/scale-to-width-down/127?cb=20180326162543')
Receiver.create(name: 'HK MP5SD Upper receiver', recoil: 0, ergonomics: 5, dealer_id: 5, price: 9576, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/87/Mp5sdupper.png/revision/latest/scale-to-width-down/127?cb=20200620111804')
Receiver.create(name: 'HK MP5 Upper receiver', recoil: 0, ergonomics: 5, dealer_id: 5, price: 4032, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/63/Mp5upper.png/revision/latest/scale-to-width-down/127?cb=20180326162541')
Receiver.create(name: 'Upper receiver of the first generation SIG MPX', recoil: 0, ergonomics: 5, dealer_id: 6, price: 4030, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9e/Mpx1gen..png/revision/latest/scale-to-width-down/127?cb=20180326162542')
Receiver.create(name: 'Izhmash Vityaz-SN receiver cover', recoil: 0, ergonomics: 5, dealer_id: 1, price: 2634, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/78/Rec.cover._vityaz-sn.png/revision/latest/scale-to-width-down/127?cb=20180326162549')
Receiver.create(name: 'FN EFFEN 90 Upper receiver for P90', recoil: 0, ergonomics: -1, dealer_id: 6, price: 4256, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c3/Effen90tn.png/revision/latest/scale-to-width-down/127?cb=20200316091456')
Receiver.create(name: 'FN Upper receiver for P90', recoil: 0, ergonomics: -5, dealer_id: 5, price: 3024, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b2/FN_Upper_receiver_for_P90_icon.png/revision/latest/scale-to-width-down/127?cb=20191119090530')
Receiver.create(name: 'FN Upper receiver for PS90', recoil: 0, ergonomics: -5, dealer_id: 4, price: 2530, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/32/PS90euppertn.png/revision/latest/scale-to-width-down/127?cb=20200316091524')
Receiver.create(name: 'AKademia Bastion dust cover for AK', recoil: 1, ergonomics: 5, dealer_id: 4, price: 6325, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/31/AKademia_Bastion_dust_cover_for_AK.PNG/revision/latest/scale-to-width-down/127?cb=20191108182734')
Receiver.create(name: 'Fab Defence PDC dust cover for AK-74', recoil: 1, ergonomics: 5, dealer_id: 4, price: 18786, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/eb/PDCicon.png/revision/latest/scale-to-width-down/127?cb=20191216173013')
Receiver.create(name: 'TWS Dog leg rail dust cover for AK', recoil: 0, ergonomics: 7, dealer_id: 6, price: 12992, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c2/TWS_Dog_leg_rail_dust_cover_for_AK.png/revision/latest/scale-to-width-down/127?cb=20191105021625')

puts "seeding WeaponReceivers..."

WeaponReceiver.create(weapon_id: 1, receiver_id: 1)
WeaponReceiver.create(weapon_id: 26, receiver_id: 1)
WeaponReceiver.create(weapon_id: 29, receiver_id: 1)
WeaponReceiver.create(weapon_id: 35, receiver_id: 2)
WeaponReceiver.create(weapon_id: 24, receiver_id: 3)
WeaponReceiver.create(weapon_id: 28, receiver_id: 4)
WeaponReceiver.create(weapon_id: 28, receiver_id: 5)
WeaponReceiver.create(weapon_id: 2, receiver_id: 6)
WeaponReceiver.create(weapon_id: 3, receiver_id: 6)
WeaponReceiver.create(weapon_id: 4, receiver_id: 6)
WeaponReceiver.create(weapon_id: 5, receiver_id: 6)
WeaponReceiver.create(weapon_id: 6, receiver_id: 6)
WeaponReceiver.create(weapon_id: 7, receiver_id: 6)
WeaponReceiver.create(weapon_id: 8, receiver_id: 6)
WeaponReceiver.create(weapon_id: 9, receiver_id: 6)
WeaponReceiver.create(weapon_id: 14, receiver_id: 6)
WeaponReceiver.create(weapon_id: 15, receiver_id: 6)
WeaponReceiver.create(weapon_id: 10, receiver_id: 7)
WeaponReceiver.create(weapon_id: 11, receiver_id: 7)
WeaponReceiver.create(weapon_id: 12, receiver_id: 7)
WeaponReceiver.create(weapon_id: 13, receiver_id: 7)
WeaponReceiver.create(weapon_id: 30, receiver_id: 7)
WeaponReceiver.create(weapon_id: 31, receiver_id: 7)
WeaponReceiver.create(weapon_id: 10, receiver_id: 8)
WeaponReceiver.create(weapon_id: 11, receiver_id: 8)
WeaponReceiver.create(weapon_id: 12, receiver_id: 8)
WeaponReceiver.create(weapon_id: 13, receiver_id: 8)
WeaponReceiver.create(weapon_id: 30, receiver_id: 8)
WeaponReceiver.create(weapon_id: 31, receiver_id: 8)
WeaponReceiver.create(weapon_id: 16, receiver_id: 9)
WeaponReceiver.create(weapon_id: 17, receiver_id: 9)
WeaponReceiver.create(weapon_id: 18, receiver_id: 9)
WeaponReceiver.create(weapon_id: 49, receiver_id: 10)
WeaponReceiver.create(weapon_id: 44, receiver_id: 10)
WeaponReceiver.create(weapon_id: 58, receiver_id: 11)
WeaponReceiver.create(weapon_id: 20, receiver_id: 12)
WeaponReceiver.create(weapon_id: 66, receiver_id: 13)
WeaponReceiver.create(weapon_id: 2, receiver_id: 14)
WeaponReceiver.create(weapon_id: 3, receiver_id: 14)
WeaponReceiver.create(weapon_id: 4, receiver_id: 14)
WeaponReceiver.create(weapon_id: 5, receiver_id: 14)
WeaponReceiver.create(weapon_id: 6, receiver_id: 14)
WeaponReceiver.create(weapon_id: 7, receiver_id: 14)
WeaponReceiver.create(weapon_id: 8, receiver_id: 14)
WeaponReceiver.create(weapon_id: 9, receiver_id: 14)
WeaponReceiver.create(weapon_id: 10, receiver_id: 14)
WeaponReceiver.create(weapon_id: 11, receiver_id: 14)
WeaponReceiver.create(weapon_id: 12, receiver_id: 14)
WeaponReceiver.create(weapon_id: 13, receiver_id: 14)
WeaponReceiver.create(weapon_id: 14, receiver_id: 14)
WeaponReceiver.create(weapon_id: 15, receiver_id: 14)
WeaponReceiver.create(weapon_id: 30, receiver_id: 14)
WeaponReceiver.create(weapon_id: 31, receiver_id: 14)
WeaponReceiver.create(weapon_id: 1, receiver_id: 15)
WeaponReceiver.create(weapon_id: 26, receiver_id: 15)
WeaponReceiver.create(weapon_id: 29, receiver_id: 15)
WeaponReceiver.create(weapon_id: 36, receiver_id: 16)
WeaponReceiver.create(weapon_id: 36, receiver_id: 17)
WeaponReceiver.create(weapon_id: 42, receiver_id: 18)
WeaponReceiver.create(weapon_id: 44, receiver_id: 19)
WeaponReceiver.create(weapon_id: 49, receiver_id: 19)
WeaponReceiver.create(weapon_id: 43, receiver_id: 20)
WeaponReceiver.create(weapon_id: 43, receiver_id: 21)
WeaponReceiver.create(weapon_id: 43, receiver_id: 22)
WeaponReceiver.create(weapon_id: 2, receiver_id: 23)
WeaponReceiver.create(weapon_id: 3, receiver_id: 23)
WeaponReceiver.create(weapon_id: 4, receiver_id: 23)
WeaponReceiver.create(weapon_id: 5, receiver_id: 23)
WeaponReceiver.create(weapon_id: 6, receiver_id: 23)
WeaponReceiver.create(weapon_id: 7, receiver_id: 23)
WeaponReceiver.create(weapon_id: 8, receiver_id: 23)
WeaponReceiver.create(weapon_id: 9, receiver_id: 23)
WeaponReceiver.create(weapon_id: 10, receiver_id: 23)
WeaponReceiver.create(weapon_id: 11, receiver_id: 23)
WeaponReceiver.create(weapon_id: 12, receiver_id: 23)
WeaponReceiver.create(weapon_id: 13, receiver_id: 23)
WeaponReceiver.create(weapon_id: 14, receiver_id: 23)
WeaponReceiver.create(weapon_id: 15, receiver_id: 23)
WeaponReceiver.create(weapon_id: 30, receiver_id: 23)
WeaponReceiver.create(weapon_id: 31, receiver_id: 23)
WeaponReceiver.create(weapon_id: 2, receiver_id: 24)
WeaponReceiver.create(weapon_id: 3, receiver_id: 24)
WeaponReceiver.create(weapon_id: 4, receiver_id: 24)
WeaponReceiver.create(weapon_id: 5, receiver_id: 24)
WeaponReceiver.create(weapon_id: 6, receiver_id: 24)
WeaponReceiver.create(weapon_id: 7, receiver_id: 24)
WeaponReceiver.create(weapon_id: 8, receiver_id: 24)
WeaponReceiver.create(weapon_id: 9, receiver_id: 24)
WeaponReceiver.create(weapon_id: 10, receiver_id: 24)
WeaponReceiver.create(weapon_id: 11, receiver_id: 24)
WeaponReceiver.create(weapon_id: 12, receiver_id: 24)
WeaponReceiver.create(weapon_id: 13, receiver_id: 24)
WeaponReceiver.create(weapon_id: 14, receiver_id: 24)
WeaponReceiver.create(weapon_id: 15, receiver_id: 24)
WeaponReceiver.create(weapon_id: 30, receiver_id: 24)
WeaponReceiver.create(weapon_id: 31, receiver_id: 24)
WeaponReceiver.create(weapon_id: 2, receiver_id: 25)
WeaponReceiver.create(weapon_id: 3, receiver_id: 25)
WeaponReceiver.create(weapon_id: 4, receiver_id: 25)
WeaponReceiver.create(weapon_id: 5, receiver_id: 25)
WeaponReceiver.create(weapon_id: 6, receiver_id: 25)
WeaponReceiver.create(weapon_id: 7, receiver_id: 25)
WeaponReceiver.create(weapon_id: 8, receiver_id: 25)
WeaponReceiver.create(weapon_id: 9, receiver_id: 25)
WeaponReceiver.create(weapon_id: 10, receiver_id: 25)
WeaponReceiver.create(weapon_id: 11, receiver_id: 25)
WeaponReceiver.create(weapon_id: 12, receiver_id: 25)
WeaponReceiver.create(weapon_id: 13, receiver_id: 25)
WeaponReceiver.create(weapon_id: 14, receiver_id: 25)
WeaponReceiver.create(weapon_id: 15, receiver_id: 25)
WeaponReceiver.create(weapon_id: 30, receiver_id: 25)
WeaponReceiver.create(weapon_id: 31, receiver_id: 25)

puts "seeding Gasblocks..."

Gasblock.create(name: 'VPO-101 Gas tube', recoil: 0, ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/14/VPO-101GTIcon.png/revision/latest/scale-to-width-down/64?cb=20190411050306')
Gasblock.create(name: 'SVDS Gas tube', recoil: 2, ergonomics: 0, dealer_id: 1, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0e/SVDS_Gas_tube_icon.png/revision/latest/scale-to-width-down/64?cb=20190410231531')
Gasblock.create(name: 'HK 416A5 Regular Low Profile Gas Block', recoil: 0, ergonomics: 0, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/11/Hk416gasicon.png/revision/latest/scale-to-width-down/64?cb=20190106142320')
Gasblock.create(name: 'AK-74 Gas tube', recoil: 0, ergonomics: 0, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/94/Ak74.png/revision/latest/scale-to-width-down/64?cb=20180318180634')
Gasblock.create(name: 'AKM (6P1 Sb.1-2) gas tube', recoil: 0, ergonomics: 0, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/27/6p1sb.png/revision/latest/scale-to-width-down/64?cb=20180318180633')
Gasblock.create(name: 'Molot AKM type gas tube', recoil: 0, ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/67/Akmgas.png/revision/latest/scale-to-width-down/64?cb=20180318180635')
Gasblock.create(name: 'Kiba Arms VDM CS gas tube', recoil: 0, ergonomics: 0, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/58/Vdmcs.png/revision/latest/scale-to-width-down/64?cb=20180318180643')
Gasblock.create(name: 'PP-19-01 gas tube', recoil: 0, ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/4a/Pp19gas.png/revision/latest/scale-to-width-down/64?cb=20180318180641')
Gasblock.create(name: 'AKS-74U Gas tube', recoil: 0, ergonomics: 0, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/77/Aksu.png/revision/latest/scale-to-width-down/64?cb=20180318180636')
Gasblock.create(name: 'MK12 Low Profile Gas Block', recoil: 2, ergonomics: 1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/cc/Mk12.png/revision/latest/scale-to-width-down/64?cb=20190517221107')
Gasblock.create(name: 'Colt M4 Front sight', recoil: 0, ergonomics: -1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/df/M4frontsighticon.png/revision/latest/scale-to-width-down/64?cb=20180513141441')
Gasblock.create(name: 'Windham Weaponry Rail Gas Block', recoil: 2, ergonomics: 0, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8f/Picblock.png/revision/latest/scale-to-width-down/64?cb=20180318180640')
Gasblock.create(name: 'JP Enterprises Gas System-6', recoil: 4, ergonomics: 2, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/26/Jpgs6.png/revision/latest/scale-to-width-down/64?cb=20180318180637')
Gasblock.create(name: 'JP Enterprises Gas System-5b', recoil: 3, ergonomics: 1, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c3/JPG_Icon.PNG/revision/latest/scale-to-width-down/64?cb=20191213005346')
Gasblock.create(name: 'KAC Low Profile Gas Block', recoil: 2, ergonomics: 1, dealer_id: 5, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d9/KAC_Low_Profile_Gas_Block_icon.png/revision/latest/scale-to-width-down/64?cb=20191229123250')
Gasblock.create(name: 'SIG MCX Gas Block', recoil: 3, ergonomics: 1, dealer_id: 6, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a6/MCX_Gas_Block_Icon.png/revision/latest/scale-to-width-down/64?cb=20201228212220')
Gasblock.create(name: 'Mk-18 Gas Block', recoil: 0, ergonomics: 0, dealer_id: 9, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1a/Mk-18_Gas_Block_icon.png/revision/latest/scale-to-width-down/64?cb=20210127172328')

puts "seeding BarrelGasblocks..."

BarrelGasblock.create(barrel_id: 1, gasblock_id: 3)
BarrelGasblock.create(barrel_id: 13, gasblock_id: 3)
BarrelGasblock.create(barrel_id: 14, gasblock_id: 3)
BarrelGasblock.create(barrel_id: 15, gasblock_id: 3)
BarrelGasblock.create(barrel_id: 24, gasblock_id: 10)
BarrelGasblock.create(barrel_id: 25, gasblock_id: 10)
BarrelGasblock.create(barrel_id: 6, gasblock_id: 10)
BarrelGasblock.create(barrel_id: 50, gasblock_id: 10)
BarrelGasblock.create(barrel_id: 24, gasblock_id: 11)
BarrelGasblock.create(barrel_id: 25, gasblock_id: 11)
BarrelGasblock.create(barrel_id: 6, gasblock_id: 11)
BarrelGasblock.create(barrel_id: 50, gasblock_id: 11)
BarrelGasblock.create(barrel_id: 24, gasblock_id: 12)
BarrelGasblock.create(barrel_id: 25, gasblock_id: 12)
BarrelGasblock.create(barrel_id: 6, gasblock_id: 12)
BarrelGasblock.create(barrel_id: 50, gasblock_id: 12)
BarrelGasblock.create(barrel_id: 24, gasblock_id: 13)
BarrelGasblock.create(barrel_id: 25, gasblock_id: 13)
BarrelGasblock.create(barrel_id: 6, gasblock_id: 13)
BarrelGasblock.create(barrel_id: 50, gasblock_id: 13)
BarrelGasblock.create(barrel_id: 24, gasblock_id: 14)
BarrelGasblock.create(barrel_id: 25, gasblock_id: 14)
BarrelGasblock.create(barrel_id: 6, gasblock_id: 14)
BarrelGasblock.create(barrel_id: 50, gasblock_id: 14)
BarrelGasblock.create(barrel_id: 21, gasblock_id: 14)
BarrelGasblock.create(barrel_id: 41, gasblock_id: 14)
BarrelGasblock.create(barrel_id: 51, gasblock_id: 15)
BarrelGasblock.create(barrel_id: 52, gasblock_id: 15)
BarrelGasblock.create(barrel_id: 53, gasblock_id: 16)
BarrelGasblock.create(barrel_id: 54, gasblock_id: 16)
MountWeapon.destroy_all
MountWeapon.reset_pk_sequence

puts "seeding Handguards..."

Handguard.create(name: 'Lancer OEM 14 inch M-LOK foregrip for MPX', recoil: 3, ergonomics: 12, dealer_id: 6, price: 15904, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d4/Lancer_OEM_14_inch_M-LOK_foregrip_for_MPX_Icon.png/revision/latest/scale-to-width-down/127?cb=20190419201846')
Handguard.create(name: 'Troy Industries 13" M-LOK foregrip for 416A5', recoil: 0, ergonomics: 14, dealer_id: 6, price: 21168, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e2/Troy_Industries_13-_M-LOK_foregrip_for_416A5_Icon.png/revision/latest/scale-to-width-down/190?cb=20190419201615')
Handguard.create(name: 'Strike Industries CRUX 15" M-LOK foregrip for 416A5', recoil: 3, ergonomics: 11, dealer_id: 6, price: 18704, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ef/CruxHandguard15InchIcon.png/revision/latest/scale-to-width-down/190?cb=20190419201510')
Handguard.create(name: 'Desert Tech foregrip for MDR', recoil: 1, ergonomics: 9, dealer_id: 6, price: 9705, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/66/Desert_Tech_foregrip_for_MDR_icon.gif/revision/latest/scale-to-width-down/127?cb=20191229152638')
Handguard.create(name: 'HK MRS 14" keymod foregrip for 416A5', recoil: 3, ergonomics: 6, dealer_id: 6, price: 15568, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/9a/HK_Keymod_Icon.png/revision/latest/scale-to-width-down/190?cb=20190414150623')
Handguard.create(name: 'Zenit B-10 AK Handguard', recoil: 1, ergonomics: 3, dealer_id: 4, price: 7049, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/ae/B10Icon.png/revision/latest/scale-to-width-down/64?cb=20190411110258')
Handguard.create(name: 'SAI 10" QD Rail foregrip for AR15', recoil: 3, ergonomics: 10, dealer_id: 4, price: 34362, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8f/SAI10Icon.png/revision/latest/scale-to-width-down/127?cb=20190415134048')
Handguard.create(name: 'Midwest 10.5 inch M-LOK foregrip for MPX', recoil: 2, ergonomics: 9, dealer_id: 5, price: 11340, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6f/Midwest_10.5_inch_M-LOK_foregrip_for_MPX_icon.png/revision/latest/scale-to-width-down/127?cb=20190410032115')
Handguard.create(name: 'Midwest 4.5 inch M-LOK foregrip for MPX', recoil: 0, ergonomics: 15, dealer_id: 5, price: 7812, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/41/Midwest4.5Icon.png/revision/latest/scale-to-width-down/64?cb=20190411105701')
Handguard.create(name: 'Stngr Vypr 10" M-LOK foregrip for AR15', recoil: 1, ergonomics: 8, dealer_id: 6, price: 16240, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2c/Stngr_Icon.png/revision/latest/scale-to-width-down/127?cb=20190414143944')
Handguard.create(name: 'Daniel Defence RIS II 12.25 foregrip for AR-15-compatible systems', recoil: 2, ergonomics: 7, dealer_id: 5, price: 21168, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/51/RIS_II_12.25_Icon.png/revision/latest/scale-to-width-down/127?cb=20190414141610')
Handguard.create(name: 'Magpul MOE SL carbine length M-LOK foregrip for AR15', recoil: 0, ergonomics: 10, dealer_id: 4, price: 10120, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/78/Magpul_MOE_SL_carabine_length_M-LOK_foregrip_for_AR15_icon.png/revision/latest/scale-to-width-down/127?cb=20190410031642')
Handguard.create(name: 'Daniel Defence FDE RIS II FSP 9.5 foregrip for AR-15-compatible systems', recoil: 1, ergonomics: 7, dealer_id: 5, price: 19152, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/55/RIS_II_FSP_Icon.png/revision/latest/scale-to-width-down/127?cb=20190414141235')
Handguard.create(name: 'SAI 14.5" QD Rail foregrip for AR15', recoil: 3, ergonomics: 12, dealer_id: 4, price: 41832, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c2/SAI14.5Icon.png/revision/latest/scale-to-width-down/190?cb=20190415134009')
Handguard.create(name: 'Midwest 6.5 inch M-LOK foregrip for MPX', recoil: 0, ergonomics: 10, dealer_id: 5, price: 9324, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5b/Midwest6.5icon.png/revision/latest/scale-to-width-down/127?cb=20190411103952')
Handguard.create(name: 'Midwest 9" M-LOK foregrip for 416A5', recoil: 0, ergonomics: 8, dealer_id: 5, price: 14742, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c9/Midwest9In416HGIcon.png/revision/latest/scale-to-width-down/127?cb=20190411111246')
Handguard.create(name: 'Magpul Zhukov-U HAND GUARD for AK', recoil: 1, ergonomics: 14, dealer_id: 4, price: 22080, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7c/ZhukovUIcon.gif/revision/latest/scale-to-width-down/127?cb=20190415181901')
Handguard.create(name: 'Magpul MOE SL mid length M-LOK foregrip for AR15', recoil: 1, ergonomics: 10, dealer_id: 4, price: 12765, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/92/Magpul_MOE_SL_mid_length_M-LOK_foregrip_for_AR15_icon.png/revision/latest/scale-to-width-down/127?cb=20190411011540')
Handguard.create(name: 'Midwest 13.5" M-LOK foregrip for 416A5', recoil: 1, ergonomics: 10, dealer_id: 5, price: 17514, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b3/Midwest_m-lok_icon.png/revision/latest/scale-to-width-down/190?cb=20190414141039')
Handguard.create(name: 'VLTOR CMRD Keymod handguard for AK', recoil: 4, ergonomics: 10, dealer_id: 6, price: 34620, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b4/VLTORCMRDKeymodicon.png/revision/latest/scale-to-width-down/127?cb=20190916220811')
Handguard.create(name: 'HK quadrail handguard for 416-compatible systems', recoil: 0, ergonomics: 4, dealer_id: 5, price: 9828, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6d/Hkquadrail416compatibleicon.png/revision/latest/scale-to-width-down/127?cb=20190106141824')
Handguard.create(name: 'HK quadrail handguard with a flip-up sight for 416-compatible systems', recoil: 0, ergonomics: 4, dealer_id: 6, price: 9352, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0a/HKQuadFlipUpIcon.png/revision/latest/scale-to-width-down/127?cb=20190203213038')
Handguard.create(name: 'HK extended quadrail handguard for 416-compatible systems', recoil: 2, ergonomics: 3, dealer_id: 6, price: 12656, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e6/Hk416extendedhandguardicon.png/revision/latest/scale-to-width-down/190?cb=20190419200222')
Handguard.create(name: 'DS Arms Quad Rail Full Length foregrip for SA-58', recoil: 0, ergonomics: 6, dealer_id: 6, price: 10754, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/52/Quad_Rail_Full_Hg_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923092818')
Handguard.create(name: 'Vltor CASV FAS foregrip for FAL', recoil: 2, ergonomics: 14, dealer_id: 6, price: 14637, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0a/FAS_CASV_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923092621')
Handguard.create(name: 'Vltor CASV FAL foregrip for FAL', recoil: 3, ergonomics: 10, dealer_id: 6, price: 18214, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ed/FAL_CASV_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923092005')
Handguard.create(name: 'Original Austrian foregrip for a FAL', recoil: 0, ergonomics: 7, dealer_id: 6, price: 2688, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/43/FAL_Austrian_hg_Icon.png/revision/latest/scale-to-width-down/127?cb=20180923091816')
Handguard.create(name: 'DSA Belgian style foregrip for a FAL', recoil: 0, ergonomics: 9, dealer_id: 6, price: 3363, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/78/FAL_Belgian_hg_icon.png/revision/latest/scale-to-width-down/127?cb=20180923091922')
Handguard.create(name: 'Aim sport Universal M-LOK foregrip for FAL', recoil: 0, ergonomics: 9, dealer_id: 6, price: 6143, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b2/FAL_MLOK_hg_icon.png/revision/latest/scale-to-width-down/127?cb=20180923092448')
Handguard.create(name: 'SA-58/FAL AIM Sports Universal KeyMod handguard', recoil: 0, ergonomics: 9, dealer_id: 6, price: 5422, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b4/FAL_Keymod_Guard_Icon.png/revision/latest/scale-to-width-down/127?cb=20181106174316')
Handguard.create(name: 'Hexagon handguard for AK', recoil: 3, ergonomics: 14, dealer_id: 6, price: 33421, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ed/AK_Hex_hg_icon.gif/revision/latest/scale-to-width-down/127?cb=20180923131502')
Handguard.create(name: 'Handguard MK 10 for use with AR-15 and compatible', recoil: 3, ergonomics: 8, dealer_id: 6, price: 17084, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/28/Handguard_MK_10_for_use_with_AR-15_and_compatible_Icon.png/revision/latest/scale-to-width-down/127?cb=20180805230540')
Handguard.create(name: 'Strike industries TRAX 1 foregrip', recoil: 2, ergonomics: 6, dealer_id: 6, price: 8876, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/91/Trax1icon.png/revision/latest/scale-to-width-down/64?cb=20180506170350')
Handguard.create(name: 'Strike industries TRAX 2', recoil: 1, ergonomics: 5, dealer_id: 6, price: 8131, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/24/Trax2icon.png/revision/latest/scale-to-width-down/64?cb=20180529235036')
Handguard.create(name: 'Colt M4 Length handguard for AR-15 and compatibles', recoil: 0, ergonomics: 9, dealer_id: 6, price: 2659, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/3d/M4LengthHandguardIcon.png/revision/latest/scale-to-width-down/127?cb=20180513141833')
Handguard.create(name: 'MP5 TL-99 Aluminum handguard', recoil: 0, ergonomics: 6, dealer_id: 6, price: 8736, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7d/Mp5tl99icon.png/revision/latest/scale-to-width-down/127?cb=20180520015225')
Handguard.create(name: 'MP5 Wide Tropical Polymer handguard', recoil: 0, ergonomics: 10, dealer_id: 5, price: 3780, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/08/Mp5wt.png/revision/latest/scale-to-width-down/127?cb=20180326144120')
Handguard.create(name: 'Wooden AK-74 handguard (6P20 Sb.6)', recoil: 0, ergonomics: 4, dealer_id: 1, price: 874, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5c/6p20sb6.png/revision/latest/scale-to-width-down/64?cb=20210130162540')
Handguard.create(name: 'Magpul MOE AKM HAND GUARD for AK', recoil: 2, ergonomics: 10, dealer_id: 5, price: 16884, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/29/MOE_AKM_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180805182549')
Handguard.create(name: 'Krebs Custom UFM Keymod System handguard for AKM', recoil: 3, ergonomics: 11, dealer_id: 5, price: 27216, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/9/92/Ufm.png/revision/latest/scale-to-width-down/127?cb=20190226211709')
Handguard.create(name: 'AKS-74U Zenit B-11 handguard', recoil: 1, ergonomics: 3, dealer_id: 4, price: 5974, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/ed/B-11hg.png/revision/latest/scale-to-width-down/64?cb=20190711172259')
Handguard.create(name: 'Remington Arms handguard for a R11 RSASS', recoil: 2, ergonomics: 5, dealer_id: 5, price: 20412, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/e4/Rsasshg.png/revision/latest/scale-to-width-down/127?cb=20190916220326')
Handguard.create(name: 'Handguard War Sport LVOA-C blk. for use with AR-15 and compatible', recoil: 2, ergonomics: 10, dealer_id: 5, price: 24318, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d2/Lvoac.png/revision/latest/scale-to-width-down/190?cb=20190412074115')
Handguard.create(name: 'Handguard War Sport LVOA-S blk. for use with AR-15 and compatible', recoil: 1, ergonomics: 9, dealer_id: 5, price: 20412, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/6/6a/Lvoas.png/revision/latest/scale-to-width-down/127?cb=20180326144117')
Handguard.create(name: 'AR-15 Daniel Defense RIS II 9.5 handguard', recoil: 1, ergonomics: 7, dealer_id: 4, price: 18648, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d4/DD_Ris2_Icon.gif/revision/latest/scale-to-width-down/127?cb=20180923102224')
Handguard.create(name: 'SOK-12 aluminum handguard MTU002 Long Top', recoil: 3, ergonomics: 2, dealer_id: 4, price: 11783, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/7c/Mtu002l.png/revision/latest/scale-to-width-down/127?cb=20180326144122')
Handguard.create(name: 'SOK-12 aluminum handguard MTU002 Short Top', recoil: 1, ergonomics: 2, dealer_id: 4, price: 8670, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/8/8d/Mtu002s.png/revision/latest/scale-to-width-down/127?cb=20180326144123')
Handguard.create(name: 'CAA RS47 foregrip for AK-compatible systems', recoil: 2, ergonomics: 7, dealer_id: 5, price: 12978, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a0/Caars47.png/revision/latest/scale-to-width-down/64?cb=20180326144112')
Handguard.create(name: 'B-10M foregrip and rail mount B-19', recoil: 2, ergonomics: 9, dealer_id: 4, price: 15327, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/57/B10m.png/revision/latest/scale-to-width-down/64?cb=20210106153255')
Handguard.create(name: '5.45 Design "Aggressor" handguard for AK', recoil: 3, ergonomics: 5, dealer_id: 6, price: 21728, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d9/5.45_Design_Aggressor_handguard_for_AK_icon.png/revision/latest/scale-to-width-down/64?cb=20200213223340')
Handguard.create(name: 'Strike Industries Viper carbine length M-LOK foregrip for AR-15', recoil: 0, ergonomics: 10, dealer_id: 6, price: 10640, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/35/Viper_carbine_MLOK_foregrip_AR15_Icon.gif/revision/latest/scale-to-width-down/127?cb=20200407091249')
Handguard.create(name: 'Noveske SWS N6 10.5 inch foregrip for AR-10-compatible systems', recoil: 1, ergonomics: 8, dealer_id: 6, price: 21504, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/df/Noveske_SWS_N6_10_5_inch_foregrip_for_AR-10-compatible_systems_icon.png/revision/latest/scale-to-width-down/127?cb=20200213223507')
Handguard.create(name: 'Noveske SWS N6 Split handguard for AR-10-compatible systems', recoil: 1, ergonomics: 8, dealer_id: 6, price: 21504, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/33/Noveske_SWS_N6_Split_handguard_for_AR-10-compatible_systems_icon.png/revision/latest/scale-to-width-down/127?cb=20200213223625')
Handguard.create(name: 'CAA HX-5 MP5 handguard', recoil: 3, ergonomics: 13, dealer_id: 5, price: 17514, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b6/CAA_HX-5_MP5_handguard_icon.png/revision/latest/scale-to-width-down/127?cb=20200213223712')
Handguard.create(name: 'URX 3.1 10.75" handguard for AR15', recoil: 2, ergonomics: 6, dealer_id: 5, price: 22806, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/1f/URX_3_1_10_75_handguard_for_AR15_icon.png/revision/latest/scale-to-width-down/127?cb=20200213223843')
Handguard.create(name: 'URX 3 8" handguard for AR15', recoil: 1, ergonomics: 6, dealer_id: 5, price:20286 , image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/1/11/URX_3_8_handguard_for_AR15_icon.png/revision/latest/scale-to-width-down/127?cb=20200213223917')
Handguard.create(name: 'Alfa Arms Goliaf AKS-74U Handguard', recoil: 1, ergonomics: 3, dealer_id: 6, price: 5818, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/53/Alfa_Arms_Goliaf_AKS-74U_Handguard_icon.png/revision/latest/scale-to-width-down/64?cb=20200209203451')
Handguard.create(name: 'PTR Tri-Rail MP5 handguard', recoil: 1, ergonomics: 11, dealer_id: 6, price: 11424, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c1/Tri-Railhabdguard_icon.png/revision/latest/scale-to-width-down/127?cb=20200407075042')
Handguard.create(name: 'TDI AKM-L handguard for AK', recoil: 0, ergonomics: 6, dealer_id: 4, price: 4830, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/e/eb/AKM-L_Icon.gif/revision/latest/scale-to-width-down/64?cb=20191212183301')
Handguard.create(name: 'Magpul MOE M590 forestock', recoil: 0, ergonomics: 13, dealer_id: 6, price: 8848, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/7/77/Magpul_MOE_M590_forestock_icon.png/revision/latest/scale-to-width-down/127?cb=20200729150506')
Handguard.create(name: 'B-30 foregrip and rail mount B-31??', recoil: 3, ergonomics: 7, dealer_id: 4, price: 21077, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/cb/B-30_foregrip_and_rail_mount_B-31%D0%A1_icon.png/revision/latest/scale-to-width-down/127?cb=20200729152147')
Handguard.create(name: 'Lancer LCH-7 12.5 inch M-LOK handguard for AR-10', recoil: 1, ergonomics: 10, dealer_id: 5, price: 25704, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/38/Lancer_LCH-7_12.5_inch_M-LOK_handguard_for_AR-10_icon.png/revision/latest/scale-to-width-down/190?cb=20201020161338')
Handguard.create(name: 'SOK-12 aluminum handguard Bravo-18', recoil: 3, ergonomics: 5, dealer_id: 6, price: 14784, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/b/b1/SOK-12_aluminum_handguard_Bravo-18_icon.png/revision/latest/scale-to-width-down/127?cb=20201020163243')
Handguard.create(name: 'SIG 12" keymod foregrip for MCX', recoil: 1, ergonomics: 6, dealer_id: 4, price: 11500, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/a/a7/12inch_MCX_Keymod_Icon.png/revision/latest/scale-to-width-down/127?cb=20201227040651')
Handguard.create(name: 'SIG 8" keymod foregrip for MCX', recoil: 0, ergonomics: 9, dealer_id: 4, price: 9200, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/4/48/8inch_MCX_Keymod_icon.png/revision/latest/scale-to-width-down/127?cb=20201227040650')

puts "seeding WeaponHandguards..."

WeaponHandguard.create(weapon_id: 22, handguard_id: 4)
WeaponHandguard.create(weapon_id: 23, handguard_id: 4)
# aks 
WeaponHandguard.create(weapon_id: 2, handguard_id: 6)
WeaponHandguard.create(weapon_id: 3, handguard_id: 6)
WeaponHandguard.create(weapon_id: 4, handguard_id: 6)
WeaponHandguard.create(weapon_id: 5, handguard_id: 6)
WeaponHandguard.create(weapon_id: 6, handguard_id: 6)
WeaponHandguard.create(weapon_id: 7, handguard_id: 6)
WeaponHandguard.create(weapon_id: 8, handguard_id: 6)
WeaponHandguard.create(weapon_id: 9, handguard_id: 6)
WeaponHandguard.create(weapon_id: 10, handguard_id: 6)
WeaponHandguard.create(weapon_id: 11, handguard_id: 6)
WeaponHandguard.create(weapon_id: 12, handguard_id: 6)
WeaponHandguard.create(weapon_id: 13, handguard_id: 6)
WeaponHandguard.create(weapon_id: 14, handguard_id: 6)
WeaponHandguard.create(weapon_id: 15, handguard_id: 6)
WeaponHandguard.create(weapon_id: 30, handguard_id: 6)
WeaponHandguard.create(weapon_id: 31, handguard_id: 6)
WeaponHandguard.create(weapon_id: 44, handguard_id: 6)
WeaponHandguard.create(weapon_id: 49, handguard_id: 6)

WeaponHandguard.create(weapon_id: 2, handguard_id: 17)
WeaponHandguard.create(weapon_id: 3, handguard_id: 17)
WeaponHandguard.create(weapon_id: 4, handguard_id: 17)
WeaponHandguard.create(weapon_id: 5, handguard_id: 17)
WeaponHandguard.create(weapon_id: 6, handguard_id: 17)
WeaponHandguard.create(weapon_id: 7, handguard_id: 17)
WeaponHandguard.create(weapon_id: 8, handguard_id: 17)
WeaponHandguard.create(weapon_id: 9, handguard_id: 17)
WeaponHandguard.create(weapon_id: 10, handguard_id: 17)
WeaponHandguard.create(weapon_id: 11, handguard_id: 17)
WeaponHandguard.create(weapon_id: 12, handguard_id: 17)
WeaponHandguard.create(weapon_id: 13, handguard_id: 17)
WeaponHandguard.create(weapon_id: 14, handguard_id: 17)
WeaponHandguard.create(weapon_id: 15, handguard_id: 17)
WeaponHandguard.create(weapon_id: 30, handguard_id: 17)
WeaponHandguard.create(weapon_id: 31, handguard_id: 17)
WeaponHandguard.create(weapon_id: 44, handguard_id: 17)
WeaponHandguard.create(weapon_id: 49, handguard_id: 17)
WeaponHandguard.create(weapon_id: 2, handguard_id: 20)
WeaponHandguard.create(weapon_id: 3, handguard_id: 20)
WeaponHandguard.create(weapon_id: 4, handguard_id: 20)
WeaponHandguard.create(weapon_id: 5, handguard_id: 20)
WeaponHandguard.create(weapon_id: 6, handguard_id: 20)
WeaponHandguard.create(weapon_id: 7, handguard_id: 20)
WeaponHandguard.create(weapon_id: 8, handguard_id: 20)
WeaponHandguard.create(weapon_id: 9, handguard_id: 20)
WeaponHandguard.create(weapon_id: 10, handguard_id: 20)
WeaponHandguard.create(weapon_id: 11, handguard_id: 20)
WeaponHandguard.create(weapon_id: 12, handguard_id: 20)
WeaponHandguard.create(weapon_id: 13, handguard_id: 20)
WeaponHandguard.create(weapon_id: 14, handguard_id: 20)
WeaponHandguard.create(weapon_id: 15, handguard_id: 20)
WeaponHandguard.create(weapon_id: 30, handguard_id: 20)
WeaponHandguard.create(weapon_id: 31, handguard_id: 20)
WeaponHandguard.create(weapon_id: 28, handguard_id: 24)
WeaponHandguard.create(weapon_id: 28, handguard_id: 25)
WeaponHandguard.create(weapon_id: 28, handguard_id: 26)
WeaponHandguard.create(weapon_id: 28, handguard_id: 27)
WeaponHandguard.create(weapon_id: 28, handguard_id: 29)
WeaponHandguard.create(weapon_id: 28, handguard_id: 30)
WeaponHandguard.create(weapon_id: 2, handguard_id: 31)
WeaponHandguard.create(weapon_id: 3, handguard_id: 31)
WeaponHandguard.create(weapon_id: 4, handguard_id: 31)
WeaponHandguard.create(weapon_id: 5, handguard_id: 31)
WeaponHandguard.create(weapon_id: 6, handguard_id: 31)
WeaponHandguard.create(weapon_id: 7, handguard_id: 31)
WeaponHandguard.create(weapon_id: 8, handguard_id: 31)
WeaponHandguard.create(weapon_id: 9, handguard_id: 31)
WeaponHandguard.create(weapon_id: 10, handguard_id: 31)
WeaponHandguard.create(weapon_id: 11, handguard_id: 31)
WeaponHandguard.create(weapon_id: 12, handguard_id: 31)
WeaponHandguard.create(weapon_id: 13, handguard_id: 31)
WeaponHandguard.create(weapon_id: 14, handguard_id: 31)
WeaponHandguard.create(weapon_id: 15, handguard_id: 31)
WeaponHandguard.create(weapon_id: 30, handguard_id: 31)
WeaponHandguard.create(weapon_id: 31, handguard_id: 31)
WeaponHandguard.create(weapon_id: 2, handguard_id: 33)
WeaponHandguard.create(weapon_id: 3, handguard_id: 33)
WeaponHandguard.create(weapon_id: 4, handguard_id: 33)
WeaponHandguard.create(weapon_id: 5, handguard_id: 33)
WeaponHandguard.create(weapon_id: 6, handguard_id: 33)
WeaponHandguard.create(weapon_id: 7, handguard_id: 33)
WeaponHandguard.create(weapon_id: 8, handguard_id: 33)
WeaponHandguard.create(weapon_id: 9, handguard_id: 33)
WeaponHandguard.create(weapon_id: 10, handguard_id: 33)
WeaponHandguard.create(weapon_id: 11, handguard_id: 33)
WeaponHandguard.create(weapon_id: 12, handguard_id: 33)
WeaponHandguard.create(weapon_id: 13, handguard_id: 33)
WeaponHandguard.create(weapon_id: 14, handguard_id: 33)
WeaponHandguard.create(weapon_id: 15, handguard_id: 33)
WeaponHandguard.create(weapon_id: 30, handguard_id: 33)
WeaponHandguard.create(weapon_id: 31, handguard_id: 33)
WeaponHandguard.create(weapon_id: 44, handguard_id: 33)
WeaponHandguard.create(weapon_id: 49, handguard_id: 33)
WeaponHandguard.create(weapon_id: 2, handguard_id: 38)
WeaponHandguard.create(weapon_id: 3, handguard_id: 38)
WeaponHandguard.create(weapon_id: 4, handguard_id: 38)
WeaponHandguard.create(weapon_id: 5, handguard_id: 38)
WeaponHandguard.create(weapon_id: 6, handguard_id: 38)
WeaponHandguard.create(weapon_id: 7, handguard_id: 38)
WeaponHandguard.create(weapon_id: 8, handguard_id: 38)
WeaponHandguard.create(weapon_id: 9, handguard_id: 38)
WeaponHandguard.create(weapon_id: 10, handguard_id: 38)
WeaponHandguard.create(weapon_id: 11, handguard_id: 38)
WeaponHandguard.create(weapon_id: 12, handguard_id: 38)
WeaponHandguard.create(weapon_id: 13, handguard_id: 38)
WeaponHandguard.create(weapon_id: 14, handguard_id: 38)
WeaponHandguard.create(weapon_id: 15, handguard_id: 38)
WeaponHandguard.create(weapon_id: 30, handguard_id: 38)
WeaponHandguard.create(weapon_id: 31, handguard_id: 38)
WeaponHandguard.create(weapon_id: 44, handguard_id: 38)
WeaponHandguard.create(weapon_id: 49, handguard_id: 38)
WeaponHandguard.create(weapon_id: 2, handguard_id: 39)
WeaponHandguard.create(weapon_id: 3, handguard_id: 39)
WeaponHandguard.create(weapon_id: 4, handguard_id: 39)
WeaponHandguard.create(weapon_id: 5, handguard_id: 39)
WeaponHandguard.create(weapon_id: 6, handguard_id: 39)
WeaponHandguard.create(weapon_id: 7, handguard_id: 39)
WeaponHandguard.create(weapon_id: 8, handguard_id: 39)
WeaponHandguard.create(weapon_id: 9, handguard_id: 39)
WeaponHandguard.create(weapon_id: 10, handguard_id: 39)
WeaponHandguard.create(weapon_id: 11, handguard_id: 39)
WeaponHandguard.create(weapon_id: 12, handguard_id: 39)
WeaponHandguard.create(weapon_id: 13, handguard_id: 39)
WeaponHandguard.create(weapon_id: 14, handguard_id: 39)
WeaponHandguard.create(weapon_id: 15, handguard_id: 39)
WeaponHandguard.create(weapon_id: 30, handguard_id: 39)
WeaponHandguard.create(weapon_id: 31, handguard_id: 39)
WeaponHandguard.create(weapon_id: 44, handguard_id: 39)
WeaponHandguard.create(weapon_id: 49, handguard_id: 39)
WeaponHandguard.create(weapon_id: 2, handguard_id: 40)
WeaponHandguard.create(weapon_id: 3, handguard_id: 40)
WeaponHandguard.create(weapon_id: 4, handguard_id: 40)
WeaponHandguard.create(weapon_id: 5, handguard_id: 40)
WeaponHandguard.create(weapon_id: 6, handguard_id: 40)
WeaponHandguard.create(weapon_id: 7, handguard_id: 40)
WeaponHandguard.create(weapon_id: 8, handguard_id: 40)
WeaponHandguard.create(weapon_id: 9, handguard_id: 40)
WeaponHandguard.create(weapon_id: 10, handguard_id: 40)
WeaponHandguard.create(weapon_id: 11, handguard_id: 40)
WeaponHandguard.create(weapon_id: 12, handguard_id: 40)
WeaponHandguard.create(weapon_id: 13, handguard_id: 40)
WeaponHandguard.create(weapon_id: 14, handguard_id: 40)
WeaponHandguard.create(weapon_id: 15, handguard_id: 40)
WeaponHandguard.create(weapon_id: 30, handguard_id: 40)
WeaponHandguard.create(weapon_id: 31, handguard_id: 40)
WeaponHandguard.create(weapon_id: 16, handguard_id: 41)
WeaponHandguard.create(weapon_id: 17, handguard_id: 41)
WeaponHandguard.create(weapon_id: 18, handguard_id: 41)
WeaponHandguard.create(weapon_id: 58, handguard_id: 46)
WeaponHandguard.create(weapon_id: 58, handguard_id: 47)
WeaponHandguard.create(weapon_id: 2, handguard_id: 48)
WeaponHandguard.create(weapon_id: 3, handguard_id: 48)
WeaponHandguard.create(weapon_id: 4, handguard_id: 48)
WeaponHandguard.create(weapon_id: 5, handguard_id: 48)
WeaponHandguard.create(weapon_id: 6, handguard_id: 48)
WeaponHandguard.create(weapon_id: 7, handguard_id: 48)
WeaponHandguard.create(weapon_id: 8, handguard_id: 48)
WeaponHandguard.create(weapon_id: 9, handguard_id: 48)
WeaponHandguard.create(weapon_id: 10, handguard_id: 48)
WeaponHandguard.create(weapon_id: 11, handguard_id: 48)
WeaponHandguard.create(weapon_id: 12, handguard_id: 48)
WeaponHandguard.create(weapon_id: 13, handguard_id: 48)
WeaponHandguard.create(weapon_id: 14, handguard_id: 48)
WeaponHandguard.create(weapon_id: 15, handguard_id: 48)
WeaponHandguard.create(weapon_id: 30, handguard_id: 48)
WeaponHandguard.create(weapon_id: 31, handguard_id: 48)
WeaponHandguard.create(weapon_id: 44, handguard_id: 48)
WeaponHandguard.create(weapon_id: 49, handguard_id: 48)
WeaponHandguard.create(weapon_id: 2, handguard_id: 49)
WeaponHandguard.create(weapon_id: 3, handguard_id: 49)
WeaponHandguard.create(weapon_id: 4, handguard_id: 49)
WeaponHandguard.create(weapon_id: 5, handguard_id: 49)
WeaponHandguard.create(weapon_id: 6, handguard_id: 49)
WeaponHandguard.create(weapon_id: 7, handguard_id: 49)
WeaponHandguard.create(weapon_id: 8, handguard_id: 49)
WeaponHandguard.create(weapon_id: 9, handguard_id: 49)
WeaponHandguard.create(weapon_id: 10, handguard_id: 49)
WeaponHandguard.create(weapon_id: 11, handguard_id: 49)
WeaponHandguard.create(weapon_id: 12, handguard_id: 49)
WeaponHandguard.create(weapon_id: 13, handguard_id: 49)
WeaponHandguard.create(weapon_id: 14, handguard_id: 49)
WeaponHandguard.create(weapon_id: 15, handguard_id: 49)
WeaponHandguard.create(weapon_id: 30, handguard_id: 49)
WeaponHandguard.create(weapon_id: 31, handguard_id: 49)
WeaponHandguard.create(weapon_id: 44, handguard_id: 49)
WeaponHandguard.create(weapon_id: 49, handguard_id: 49)
WeaponHandguard.create(weapon_id: 2, handguard_id: 50)
WeaponHandguard.create(weapon_id: 3, handguard_id: 50)
WeaponHandguard.create(weapon_id: 4, handguard_id: 50)
WeaponHandguard.create(weapon_id: 5, handguard_id: 50)
WeaponHandguard.create(weapon_id: 6, handguard_id: 50)
WeaponHandguard.create(weapon_id: 7, handguard_id: 50)
WeaponHandguard.create(weapon_id: 8, handguard_id: 50)
WeaponHandguard.create(weapon_id: 9, handguard_id: 50)
WeaponHandguard.create(weapon_id: 10, handguard_id: 50)
WeaponHandguard.create(weapon_id: 11, handguard_id: 50)
WeaponHandguard.create(weapon_id: 12, handguard_id: 50)
WeaponHandguard.create(weapon_id: 13, handguard_id: 50)
WeaponHandguard.create(weapon_id: 14, handguard_id: 50)
WeaponHandguard.create(weapon_id: 15, handguard_id: 50)
WeaponHandguard.create(weapon_id: 30, handguard_id: 50)
WeaponHandguard.create(weapon_id: 31, handguard_id: 50)
WeaponHandguard.create(weapon_id: 16, handguard_id: 57)
WeaponHandguard.create(weapon_id: 17, handguard_id: 57)
WeaponHandguard.create(weapon_id: 18, handguard_id: 57)
WeaponHandguard.create(weapon_id: 2, handguard_id: 59)
WeaponHandguard.create(weapon_id: 3, handguard_id: 59)
WeaponHandguard.create(weapon_id: 4, handguard_id: 59)
WeaponHandguard.create(weapon_id: 5, handguard_id: 59)
WeaponHandguard.create(weapon_id: 6, handguard_id: 59)
WeaponHandguard.create(weapon_id: 7, handguard_id: 59)
WeaponHandguard.create(weapon_id: 8, handguard_id: 59)
WeaponHandguard.create(weapon_id: 9, handguard_id: 59)
WeaponHandguard.create(weapon_id: 10, handguard_id: 59)
WeaponHandguard.create(weapon_id: 11, handguard_id: 59)
WeaponHandguard.create(weapon_id: 12, handguard_id: 59)
WeaponHandguard.create(weapon_id: 13, handguard_id: 59)
WeaponHandguard.create(weapon_id: 14, handguard_id: 59)
WeaponHandguard.create(weapon_id: 15, handguard_id: 59)
WeaponHandguard.create(weapon_id: 30, handguard_id: 59)
WeaponHandguard.create(weapon_id: 31, handguard_id: 59)
WeaponHandguard.create(weapon_id: 44, handguard_id: 59)
WeaponHandguard.create(weapon_id: 49, handguard_id: 59)
WeaponHandguard.create(weapon_id: 53, handguard_id: 60)
WeaponHandguard.create(weapon_id: 2, handguard_id: 61)
WeaponHandguard.create(weapon_id: 3, handguard_id: 61)
WeaponHandguard.create(weapon_id: 4, handguard_id: 61)
WeaponHandguard.create(weapon_id: 5, handguard_id: 61)
WeaponHandguard.create(weapon_id: 6, handguard_id: 61)
WeaponHandguard.create(weapon_id: 7, handguard_id: 61)
WeaponHandguard.create(weapon_id: 8, handguard_id: 61)
WeaponHandguard.create(weapon_id: 9, handguard_id: 61)
WeaponHandguard.create(weapon_id: 10, handguard_id: 61)
WeaponHandguard.create(weapon_id: 11, handguard_id: 61)
WeaponHandguard.create(weapon_id: 12, handguard_id: 61)
WeaponHandguard.create(weapon_id: 13, handguard_id: 61)
WeaponHandguard.create(weapon_id: 14, handguard_id: 61)
WeaponHandguard.create(weapon_id: 15, handguard_id: 61)
WeaponHandguard.create(weapon_id: 30, handguard_id: 61)
WeaponHandguard.create(weapon_id: 31, handguard_id: 61)
WeaponHandguard.create(weapon_id: 58, handguard_id: 63)

puts "seeding HandguardReceivers..."

# ar matches
HandguardReceiver.create(handguard_id: 35, receiver_id: 1)
HandguardReceiver.create(handguard_id: 11, receiver_id: 1)
HandguardReceiver.create(handguard_id: 13, receiver_id: 1)
HandguardReceiver.create(handguard_id: 45, receiver_id: 1)
HandguardReceiver.create(handguard_id: 32, receiver_id: 1)
HandguardReceiver.create(handguard_id: 43, receiver_id: 1)
HandguardReceiver.create(handguard_id: 44, receiver_id: 1)
HandguardReceiver.create(handguard_id: 18, receiver_id: 1)
HandguardReceiver.create(handguard_id: 12, receiver_id: 1)
HandguardReceiver.create(handguard_id: 42, receiver_id: 1)
HandguardReceiver.create(handguard_id: 7, receiver_id: 1)
HandguardReceiver.create(handguard_id: 14, receiver_id: 1)
HandguardReceiver.create(handguard_id: 10, receiver_id: 1)
HandguardReceiver.create(handguard_id: 51, receiver_id: 1)
HandguardReceiver.create(handguard_id: 55, receiver_id: 1)
HandguardReceiver.create(handguard_id: 56, receiver_id: 1)
# hk handguards
HandguardReceiver.create(handguard_id: 5, receiver_id: 3)
HandguardReceiver.create(handguard_id: 21, receiver_id: 3)
HandguardReceiver.create(handguard_id: 22, receiver_id: 3)
HandguardReceiver.create(handguard_id: 23, receiver_id: 3)
HandguardReceiver.create(handguard_id: 16, receiver_id: 3)
HandguardReceiver.create(handguard_id: 19, receiver_id: 3)
HandguardReceiver.create(handguard_id: 3, receiver_id: 3)
HandguardReceiver.create(handguard_id: 2, receiver_id: 3)
HandguardReceiver.create(handguard_id: 35, receiver_id: 15)
HandguardReceiver.create(handguard_id: 11, receiver_id: 15)
HandguardReceiver.create(handguard_id: 13, receiver_id: 15)
HandguardReceiver.create(handguard_id: 45, receiver_id: 15)
HandguardReceiver.create(handguard_id: 32, receiver_id: 15)
HandguardReceiver.create(handguard_id: 43, receiver_id: 15)
HandguardReceiver.create(handguard_id: 44, receiver_id: 15)
HandguardReceiver.create(handguard_id: 18, receiver_id: 15)
HandguardReceiver.create(handguard_id: 12, receiver_id: 15)
HandguardReceiver.create(handguard_id: 42, receiver_id: 15)
HandguardReceiver.create(handguard_id: 7, receiver_id: 15)
HandguardReceiver.create(handguard_id: 14, receiver_id: 15)
HandguardReceiver.create(handguard_id: 10, receiver_id: 15)
HandguardReceiver.create(handguard_id: 51, receiver_id: 15)
HandguardReceiver.create(handguard_id: 55, receiver_id: 15)
HandguardReceiver.create(handguard_id: 56, receiver_id: 15)
HandguardReceiver.create(handguard_id: 36, receiver_id: 17)
HandguardReceiver.create(handguard_id: 54, receiver_id: 17)
HandguardReceiver.create(handguard_id: 37, receiver_id: 17)
HandguardReceiver.create(handguard_id: 58, receiver_id: 17)
HandguardReceiver.create(handguard_id: 1, receiver_id: 18)
HandguardReceiver.create(handguard_id: 8, receiver_id: 18)
HandguardReceiver.create(handguard_id: 9, receiver_id: 18)
HandguardReceiver.create(handguard_id: 15, receiver_id: 18)

puts "seeding BarrelReceivers..."

BarrelReceiver.create(barrel_id: 24, receiver_id: 1)
BarrelReceiver.create(barrel_id: 25, receiver_id: 1)
BarrelReceiver.create(barrel_id: 50, receiver_id: 1)
BarrelReceiver.create(barrel_id: 6, receiver_id: 1)

BarrelReceiver.create(barrel_id: 13, receiver_id: 3)
BarrelReceiver.create(barrel_id: 14, receiver_id: 3)
BarrelReceiver.create(barrel_id: 15, receiver_id: 3)
BarrelReceiver.create(barrel_id: 1, receiver_id: 3)

BarrelReceiver.create(barrel_id: 24, receiver_id: 15)
BarrelReceiver.create(barrel_id: 25, receiver_id: 15)
BarrelReceiver.create(barrel_id: 50, receiver_id: 15)
BarrelReceiver.create(barrel_id: 6, receiver_id: 15)

BarrelReceiver.create(barrel_id: 26, receiver_id: 18)
BarrelReceiver.create(barrel_id: 2, receiver_id: 18)
BarrelReceiver.create(barrel_id: 3, receiver_id: 18)
BarrelReceiver.create(barrel_id: 4, receiver_id: 18)
BarrelReceiver.create(barrel_id: 5, receiver_id: 18)

puts "seeding mounts..."

Mount.create(name: 'Remington RAHG 4 inch guide', ergonomics: 0, dealer_id: 6, price: 2674, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d2/RemingtonRAHG4inchicon.png/revision/latest/scale-to-width-down/64?cb=20190105174403')
Mount.create(name: 'Vltor CASV 5 inch guide', ergonomics: 0, dealer_id: 6, price: 1715, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2c/5in_CASV_Icon.png/revision/latest/scale-to-width-down/64?cb=20180923101953')
Mount.create(name: 'Magpul M-LOK 4.1 inch guide', ergonomics: 0, dealer_id: 6, price: 1762, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/5d/Magpul_MLOK_4_1_inch_rail_Icon.png/revision/latest/scale-to-width-down/64?cb=20181104015039')
Mount.create(name: 'Medium length rail for Hexagon', ergonomics: 0, dealer_id: 6, price: 1650, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/d/d3/Hex_Med_Icon.gif/revision/latest/scale-to-width-down/64?cb=20180923135728')
Mount.create(name: 'Strike Industries KeyMod 6 inch rail', ergonomics: 0, dealer_id: 6, price: 1742, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/0/0f/6inchrailicon.png/revision/latest/scale-to-width-down/64?cb=20180506163506')
Mount.create(name: 'SIG MPX Gen1 Handguard 4 inch rail adapter', ergonomics: 0, dealer_id: 6, price: 2674, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/50/4ingen1.png/revision/latest/scale-to-width-down/64?cb=20180326174258')
Mount.create(name: 'TOZ 6P29M Mount', ergonomics: -1, dealer_id: 8, price: 7922, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/3/35/6p29m.png/revision/latest/scale-to-width-down/64?cb=20190420205548')
Mount.create(name: 'Vltor CASV keymod 6 inch guide', ergonomics: 0, dealer_id: 5, price: 1260, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/2/2f/6incasv.png/revision/latest/scale-to-width-down/64?cb=20180326174259')
Mount.create(name: 'HK UMP Bottom rail', ergonomics: 0, dealer_id: 5, price: 1260, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/5/55/UMP_bottomrail_icon_.png/revision/latest/scale-to-width-down/64?cb=20210107164731')
Mount.create(name: 'KRISS Vector Bottom rail', ergonomics: 0, dealer_id: 4, price: 1265, image: 'https://static.wikia.nocookie.net/escapefromtarkov_gamepedia/images/c/c9/Vector_bottomrail_icon.png/revision/latest/scale-to-width-down/64?cb=20210109174124')

puts "seeding MountWeapons..."

MountWeapon.create(weapon_id: 20, mount_id: 7)
MountWeapon.create(weapon_id: 66, mount_id: 7)
MountWeapon.create(weapon_id: 51, mount_id: 10)
MountWeapon.create(weapon_id: 52, mount_id: 10)
MountWeapon.create(weapon_id: 50, mount_id: 9)

puts "seeding MountHandguards..."

MountHandguard.create(handguard_id: 42, mount_id: 1)
MountHandguard.create(handguard_id: 25, mount_id: 2)
MountHandguard.create(handguard_id: 26, mount_id: 2)

MountHandguard.create(handguard_id: 60, mount_id: 3)
MountHandguard.create(handguard_id: 59, mount_id: 3)
MountHandguard.create(handguard_id: 3, mount_id: 3)
MountHandguard.create(handguard_id: 29, mount_id: 3)
MountHandguard.create(handguard_id: 4, mount_id: 3)
MountHandguard.create(handguard_id: 8, mount_id: 3)
MountHandguard.create(handguard_id: 9, mount_id: 3)
MountHandguard.create(handguard_id: 16, mount_id: 3)
MountHandguard.create(handguard_id: 39, mount_id: 3)
MountHandguard.create(handguard_id: 18, mount_id: 3)
MountHandguard.create(handguard_id: 12, mount_id: 3)
MountHandguard.create(handguard_id: 1, mount_id: 3)
MountHandguard.create(handguard_id: 7, mount_id: 3)
MountHandguard.create(handguard_id: 14, mount_id: 3)
MountHandguard.create(handguard_id: 10, mount_id: 3)
MountHandguard.create(handguard_id: 2, mount_id: 3)
MountHandguard.create(handguard_id: 51, mount_id: 3)
MountHandguard.create(handguard_id: 17, mount_id: 3)

MountHandguard.create(handguard_id: 31, mount_id: 4)
MountHandguard.create(handguard_id: 40, mount_id: 5)
MountHandguard.create(handguard_id: 33, mount_id: 5)
MountHandguard.create(handguard_id: 20, mount_id: 5)
MountHandguard.create(handguard_id: 30, mount_id: 5)
MountHandguard.create(handguard_id: 5, mount_id: 5)

MountHandguard.create(handguard_id: 40, mount_id: 8)
MountHandguard.create(handguard_id: 33, mount_id: 8)
MountHandguard.create(handguard_id: 20, mount_id: 8)
MountHandguard.create(handguard_id: 30, mount_id: 8)
MountHandguard.create(handguard_id: 5, mount_id: 8)


puts "seeding MountForegrips..."

MountForegrip.create(foregrip_id: 2, mount_id: 1)
MountForegrip.create(foregrip_id: 19, mount_id: 1)
MountForegrip.create(foregrip_id: 6, mount_id: 1)
MountForegrip.create(foregrip_id: 1, mount_id: 1)
MountForegrip.create(foregrip_id: 7, mount_id: 1)
MountForegrip.create(foregrip_id: 8, mount_id: 1)
MountForegrip.create(foregrip_id: 20, mount_id: 1)
MountForegrip.create(foregrip_id: 9, mount_id: 1)
MountForegrip.create(foregrip_id: 3, mount_id: 1)
MountForegrip.create(foregrip_id: 10, mount_id: 1)
MountForegrip.create(foregrip_id: 11, mount_id: 1)
MountForegrip.create(foregrip_id: 13, mount_id: 1)
MountForegrip.create(foregrip_id: 14, mount_id: 1)
MountForegrip.create(foregrip_id: 12, mount_id: 1)
MountForegrip.create(foregrip_id: 15, mount_id: 1)
MountForegrip.create(foregrip_id: 16, mount_id: 1)
MountForegrip.create(foregrip_id: 17, mount_id: 1)
MountForegrip.create(foregrip_id: 18, mount_id: 1)
MountForegrip.create(foregrip_id: 22, mount_id: 1)

MountForegrip.create(foregrip_id: 2, mount_id: 2)
MountForegrip.create(foregrip_id: 19, mount_id: 2)
MountForegrip.create(foregrip_id: 6, mount_id: 2)
MountForegrip.create(foregrip_id: 1, mount_id: 2)
MountForegrip.create(foregrip_id: 7, mount_id: 2)
MountForegrip.create(foregrip_id: 8, mount_id: 2)
MountForegrip.create(foregrip_id: 20, mount_id: 2)
MountForegrip.create(foregrip_id: 9, mount_id: 2)
MountForegrip.create(foregrip_id: 3, mount_id: 2)
MountForegrip.create(foregrip_id: 10, mount_id: 2)
MountForegrip.create(foregrip_id: 11, mount_id: 2)
MountForegrip.create(foregrip_id: 13, mount_id: 2)
MountForegrip.create(foregrip_id: 14, mount_id: 2)
MountForegrip.create(foregrip_id: 12, mount_id: 2)
MountForegrip.create(foregrip_id: 15, mount_id: 2)
MountForegrip.create(foregrip_id: 16, mount_id: 2)
MountForegrip.create(foregrip_id: 17, mount_id: 2)
MountForegrip.create(foregrip_id: 18, mount_id: 2)
MountForegrip.create(foregrip_id: 22, mount_id: 2)
MountForegrip.create(foregrip_id: 2, mount_id: 3)
MountForegrip.create(foregrip_id: 19, mount_id: 3)
MountForegrip.create(foregrip_id: 6, mount_id: 3)
MountForegrip.create(foregrip_id: 1, mount_id: 3)
MountForegrip.create(foregrip_id: 7, mount_id: 3)
MountForegrip.create(foregrip_id: 8, mount_id: 3)
MountForegrip.create(foregrip_id: 20, mount_id: 3)
MountForegrip.create(foregrip_id: 9, mount_id: 3)
MountForegrip.create(foregrip_id: 3, mount_id: 3)
MountForegrip.create(foregrip_id: 10, mount_id: 3)
MountForegrip.create(foregrip_id: 11, mount_id: 3)
MountForegrip.create(foregrip_id: 13, mount_id: 3)
MountForegrip.create(foregrip_id: 14, mount_id: 3)
MountForegrip.create(foregrip_id: 12, mount_id: 3)
MountForegrip.create(foregrip_id: 15, mount_id: 3)
MountForegrip.create(foregrip_id: 16, mount_id: 3)
MountForegrip.create(foregrip_id: 17, mount_id: 3)
MountForegrip.create(foregrip_id: 18, mount_id: 3)
MountForegrip.create(foregrip_id: 22, mount_id: 3)
MountForegrip.create(foregrip_id: 2, mount_id: 4)
MountForegrip.create(foregrip_id: 19, mount_id: 4)
MountForegrip.create(foregrip_id: 6, mount_id: 4)
MountForegrip.create(foregrip_id: 1, mount_id: 4)
MountForegrip.create(foregrip_id: 7, mount_id: 4)
MountForegrip.create(foregrip_id: 8, mount_id: 4)
MountForegrip.create(foregrip_id: 20, mount_id: 4)
MountForegrip.create(foregrip_id: 9, mount_id: 4)
MountForegrip.create(foregrip_id: 3, mount_id: 4)
MountForegrip.create(foregrip_id: 10, mount_id: 4)
MountForegrip.create(foregrip_id: 11, mount_id: 4)
MountForegrip.create(foregrip_id: 13, mount_id: 4)
MountForegrip.create(foregrip_id: 14, mount_id: 4)
MountForegrip.create(foregrip_id: 12, mount_id: 4)
MountForegrip.create(foregrip_id: 15, mount_id: 4)
MountForegrip.create(foregrip_id: 16, mount_id: 4)
MountForegrip.create(foregrip_id: 17, mount_id: 4)
MountForegrip.create(foregrip_id: 18, mount_id: 4)
MountForegrip.create(foregrip_id: 22, mount_id: 4)
MountForegrip.create(foregrip_id: 2, mount_id: 5)
MountForegrip.create(foregrip_id: 19, mount_id: 5)
MountForegrip.create(foregrip_id: 6, mount_id: 5)
MountForegrip.create(foregrip_id: 1, mount_id: 5)
MountForegrip.create(foregrip_id: 7, mount_id: 5)
MountForegrip.create(foregrip_id: 8, mount_id: 5)
MountForegrip.create(foregrip_id: 20, mount_id: 5)
MountForegrip.create(foregrip_id: 9, mount_id: 5)
MountForegrip.create(foregrip_id: 3, mount_id: 5)
MountForegrip.create(foregrip_id: 10, mount_id: 5)
MountForegrip.create(foregrip_id: 11, mount_id: 5)
MountForegrip.create(foregrip_id: 13, mount_id: 5)
MountForegrip.create(foregrip_id: 14, mount_id: 5)
MountForegrip.create(foregrip_id: 12, mount_id: 5)
MountForegrip.create(foregrip_id: 15, mount_id: 5)
MountForegrip.create(foregrip_id: 16, mount_id: 5)
MountForegrip.create(foregrip_id: 17, mount_id: 5)
MountForegrip.create(foregrip_id: 18, mount_id: 5)
MountForegrip.create(foregrip_id: 22, mount_id: 5)
MountForegrip.create(foregrip_id: 2, mount_id: 6)
MountForegrip.create(foregrip_id: 19, mount_id: 6)
MountForegrip.create(foregrip_id: 6, mount_id: 6)
MountForegrip.create(foregrip_id: 1, mount_id: 6)
MountForegrip.create(foregrip_id: 7, mount_id: 6)
MountForegrip.create(foregrip_id: 8, mount_id: 6)
MountForegrip.create(foregrip_id: 20, mount_id: 6)
MountForegrip.create(foregrip_id: 9, mount_id: 6)
MountForegrip.create(foregrip_id: 3, mount_id: 6)
MountForegrip.create(foregrip_id: 10, mount_id: 6)
MountForegrip.create(foregrip_id: 11, mount_id: 6)
MountForegrip.create(foregrip_id: 13, mount_id: 6)
MountForegrip.create(foregrip_id: 14, mount_id: 6)
MountForegrip.create(foregrip_id: 12, mount_id: 6)
MountForegrip.create(foregrip_id: 15, mount_id: 6)
MountForegrip.create(foregrip_id: 16, mount_id: 6)
MountForegrip.create(foregrip_id: 17, mount_id: 6)
MountForegrip.create(foregrip_id: 18, mount_id: 6)
MountForegrip.create(foregrip_id: 22, mount_id: 6)
MountForegrip.create(foregrip_id: 2, mount_id: 7)
MountForegrip.create(foregrip_id: 19, mount_id: 7)
MountForegrip.create(foregrip_id: 6, mount_id: 7)
MountForegrip.create(foregrip_id: 1, mount_id: 7)
MountForegrip.create(foregrip_id: 7, mount_id: 7)
MountForegrip.create(foregrip_id: 8, mount_id: 7)
MountForegrip.create(foregrip_id: 20, mount_id: 7)
MountForegrip.create(foregrip_id: 9, mount_id: 7)
MountForegrip.create(foregrip_id: 3, mount_id: 7)
MountForegrip.create(foregrip_id: 10, mount_id: 7)
MountForegrip.create(foregrip_id: 11, mount_id: 7)
MountForegrip.create(foregrip_id: 13, mount_id: 7)
MountForegrip.create(foregrip_id: 14, mount_id: 7)
MountForegrip.create(foregrip_id: 12, mount_id: 7)
MountForegrip.create(foregrip_id: 15, mount_id: 7)
MountForegrip.create(foregrip_id: 16, mount_id: 7)
MountForegrip.create(foregrip_id: 17, mount_id: 7)
MountForegrip.create(foregrip_id: 18, mount_id: 7)
MountForegrip.create(foregrip_id: 22, mount_id: 7)
MountForegrip.create(foregrip_id: 2, mount_id: 8)
MountForegrip.create(foregrip_id: 19, mount_id: 8)
MountForegrip.create(foregrip_id: 6, mount_id: 8)
MountForegrip.create(foregrip_id: 1, mount_id: 8)
MountForegrip.create(foregrip_id: 7, mount_id: 8)
MountForegrip.create(foregrip_id: 8, mount_id: 8)
MountForegrip.create(foregrip_id: 20, mount_id: 8)
MountForegrip.create(foregrip_id: 9, mount_id: 8)
MountForegrip.create(foregrip_id: 3, mount_id: 8)
MountForegrip.create(foregrip_id: 10, mount_id: 8)
MountForegrip.create(foregrip_id: 11, mount_id: 8)
MountForegrip.create(foregrip_id: 13, mount_id: 8)
MountForegrip.create(foregrip_id: 14, mount_id: 8)
MountForegrip.create(foregrip_id: 12, mount_id: 8)
MountForegrip.create(foregrip_id: 15, mount_id: 8)
MountForegrip.create(foregrip_id: 16, mount_id: 8)
MountForegrip.create(foregrip_id: 17, mount_id: 8)
MountForegrip.create(foregrip_id: 18, mount_id: 8)
MountForegrip.create(foregrip_id: 22, mount_id: 8)
MountForegrip.create(foregrip_id: 2, mount_id: 9)
MountForegrip.create(foregrip_id: 19, mount_id: 9)
MountForegrip.create(foregrip_id: 6, mount_id: 9)
MountForegrip.create(foregrip_id: 1, mount_id: 9)
MountForegrip.create(foregrip_id: 7, mount_id: 9)
MountForegrip.create(foregrip_id: 8, mount_id: 9)
MountForegrip.create(foregrip_id: 20, mount_id: 9)
MountForegrip.create(foregrip_id: 9, mount_id: 9)
MountForegrip.create(foregrip_id: 3, mount_id: 9)
MountForegrip.create(foregrip_id: 10, mount_id: 9)
MountForegrip.create(foregrip_id: 11, mount_id: 9)
MountForegrip.create(foregrip_id: 13, mount_id: 9)
MountForegrip.create(foregrip_id: 14, mount_id: 9)
MountForegrip.create(foregrip_id: 12, mount_id: 9)
MountForegrip.create(foregrip_id: 15, mount_id: 9)
MountForegrip.create(foregrip_id: 16, mount_id: 9)
MountForegrip.create(foregrip_id: 17, mount_id: 9)
MountForegrip.create(foregrip_id: 18, mount_id: 9)
MountForegrip.create(foregrip_id: 22, mount_id: 9)
MountForegrip.create(foregrip_id: 2, mount_id: 10)
MountForegrip.create(foregrip_id: 19, mount_id: 10)
MountForegrip.create(foregrip_id: 6, mount_id: 10)
MountForegrip.create(foregrip_id: 1, mount_id: 10)
MountForegrip.create(foregrip_id: 7, mount_id: 10)
MountForegrip.create(foregrip_id: 8, mount_id: 10)
MountForegrip.create(foregrip_id: 20, mount_id: 10)
MountForegrip.create(foregrip_id: 9, mount_id: 10)
MountForegrip.create(foregrip_id: 3, mount_id: 10)
MountForegrip.create(foregrip_id: 10, mount_id: 10)
MountForegrip.create(foregrip_id: 11, mount_id: 10)
MountForegrip.create(foregrip_id: 13, mount_id: 10)
MountForegrip.create(foregrip_id: 14, mount_id: 10)
MountForegrip.create(foregrip_id: 12, mount_id: 10)
MountForegrip.create(foregrip_id: 15, mount_id: 10)
MountForegrip.create(foregrip_id: 16, mount_id: 10)
MountForegrip.create(foregrip_id: 17, mount_id: 10)
MountForegrip.create(foregrip_id: 18, mount_id: 10)
MountForegrip.create(foregrip_id: 22, mount_id: 10)


puts "seeding savedgun"

Mount.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, price: 0)
PistolGrip.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, price: 0)
Receiver.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
Stock.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
Foregrip.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
Barrel.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
Handguard.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
BufferTube.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
Muzzle.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
MuzzleAdapter.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0, price: 0)
Gasblock.create(name: 'Nil', image: 'Nil', dealer_id: 9, ergonomics: 0, recoil: 0)

User.create(username: 'jack', email:'email@email.com', password: 'hello')

SavedGun.create(user_id: 1, pistol_grip_id: 2, weapon_id: 1, mount_id: Mount.last.id, receiver_id: 1, stock_id: 1, foregrip_id: Foregrip.last.id, barrel_id: Barrel.last.id, gasblock_id: 1, muzzle_id: 1, muzzle_adapter_id: 1, handguard_id: 2, buffer_tube_id: 2)


puts "seeding tasks"

Task.create(name: 'Debut', dealer_id: 1, description: 'Eliminate 5 Scavs on Customs..
Obtain and hand over 2 MP-133 shotguns to Prapor..', rewards: '+1,700 EXP..
Prapor Rep +0.02..
15,000 Roubles..
1x PP-91 Kedr 9x18PM SMG..
60x 9x19mm Pst gzh..
Unlocks purchase of Kalashnikov AKS-74U 5.45x39 at Prapor LL1..')
Task.create(name: 'Search Mission', dealer_id: 1, description: 'Find Prapors missing convoy on Woods..
Locate the temporary USEC camp..
Survive and extract from the location..', rewards: '+2,800 EXP..
Prapor Rep +0.02..
22,000 Roubles..
1x EYE MK2 professional hand-held compass..
1x Woods plan map..')
Task.create(name: 'Checking', dealer_id: 1, description: 'Obtain the Bronze pocket watch on Customs..
(Optional) Obtain the key to the fuel tanker truck..
Hand over the Bronze pocket watch to Prapor..', rewards: '+1,800 EXP..
Prapor Rep +0.03..
15,000 Roubles..
1x Stechkin Automatic Pistol 9x18PM..
3x Standard APS 9x18PM 20-round magazine..')
Task.create(name: 'Shootout Picnic', dealer_id: 1, description: 'Eliminate 15 Scavs on Woods..', rewards: '+2,000 EXP..
Prapor Rep +0.03..
20,000 Roubles..
1x Kalashnikov AKS-74U 5.45x39..
3x 6L20 30-round 5.45x39 magazine for AK-74 and compatible weapons..')
Task.create(name: 'Delivery from the past', dealer_id: 1, description: 'Obtain the secure case in the Tarcone Directors office at the customs terminal..
Stash the case in the Factory break room, located on the 2nd floor near Gate 3..
Survive and extract from Factory..', rewards: '+4,000 EXP..
Prapor Rep +0.03..
20,000 Roubles..
1x Saiga 12ga ver. 10 12/76 shotgun..
4x Sb.5 5-round 12/76 magazine for SOK-12 and compatible weapons..
40x 12x70 7mm Buckshot..
Unlocks purchase of 5.45x39mm PS gs at Prapor LL1..')
Task.create(name: 'BP depot', dealer_id: 1, description: 'Mark the first fuel tank with an MS2000 Marker on Customs..
Mark the second fuel tank with an MS2000 Marker on Customs..
Mark the third fuel tank with an MS2000 Marker on Customs..
Mark the fourth fuel tank with an MS2000 Marker on Customs..
Survive and extract from the location..', rewards: '+2,800 EXP..
Prapor Rep +0.03..
Jaeger Rep -0.01..
30,000 Roubles..
2x MS2000 Marker..
1x Expeditionary fuel tank..')
Task.create(name: 'The bunker - Part 1', dealer_id: 1, description: 'Find the underground bunker..
Locate the control room in the underground bunker..
Survive and extract from the location..', rewards: '+5,700 EXP..
Prapor Rep +0.03..
20,000 Roubles..
1x AK-105 5.45x39 assault rifle..
60x 5.45x39mm PPBS gs "Igolnik"..
30x 5.45x39mm BT gs..')
Task.create(name: 'The bunker - Part 2', dealer_id: 1, description: 'Locate the hermetic door leading to the hospital (white bishop)..
Locate one of two hermetic doors leading to the academy building (black bishop)..
Locate one of two hermetic doors leading to barracks ???1 (black pawn)..
Locate one of two hermetic doors leading to barracks ???2 (white pawn)..
Locate the hermetic door leading to the building of the air control center (white king)..
Survive and extract from the location..', rewards: '+9,200 EXP..
Prapor Rep +0.03..
25,000 Roubles..
1x Kalashnikov AKS-74UB 5.45x39..
120x 5.45x39mm BS gs..
1x CAA RS47 foregrip for AK-compatible systems..
1x CAA AKTS AK-74 Buffer Tube for AK and compatible (foldable)..')
Task.create(name: 'Bad rep evidence', dealer_id: 1, description: 'Obtain Secure Folder 0031 in a bunkhouse on Customs..
(Optional) Gain access to the locked room on the third floor in the Factory office hallway..
(Optional) Obtain the Portable bunkhouse key..
Hand over the Secure Folder 0031 to Prapor..
Survive and extract from Customs..', rewards: '+4,100 EXP..
Prapor Rep +0.03..
35,000 Roubles..
1x PP-91-01 Kedr-B 9x18PM SMG..
3x Standard 9x18PM 30-round magazine for PP-91..
120x 9x18mm PM PS gs PPO..
Unlocks purchase of Zenit-Belomo PSO 1M2-1 4x24 scope at Prapor LL2..')
Task.create(name: 'Ice cream cones', dealer_id: 1, description: 'Find 3 AK-74 5.45x39 6L31 60-round magazines in raid (can be crafted in the Hideout)..
(Optional) Find the key to the bunker in the TerraGroup employees dorm room..
(Optional) Locate the correct bunker in Woods..
Hand over 3 AK-74 5.45x39 6L31 60-round magazines to Prapor..', rewards: '+5,200 EXP..
Prapor Rep +0.02..
17,000 Roubles..
1x RPK-16 5.45x39 light machine gun..
200x 5.45x39mm PP gs..
Unlocks barter for 60-round 6L31 5.45x39 magazine for AK-74 and compatibles at Prapor LL2..')
Task.create(name: 'No place for renegades', dealer_id: 1, description: 'Eliminate 5 Raiders in the command bunker on Reserve..', rewards: '+8,500 EXP..
Prapor Rep +0.03..
40,000 Roubles..
1x AK-103 7.62x39 assault rifle..
3x 30-round 7.62x39 magazine for AK-103 and compatible weapons..
150x 7.62x39mm PS gzh..')
Task.create(name: 'Documents', dealer_id: 1, description: 'Obtain Military documents ???1 on Reserve..
Obtain Military documents ???2 on Reserve..
Obtain Military documents ???3 on Reserve..
Hand over the first documents to Prapor..
Hand over the second documents to Prapor..
Hand over the third documents to Prapor..', rewards: '+7,800 EXP..
Prapor Rep +0.04..
45,000 Roubles..
1x NSPU-M night Scope..
1x Zenit 2P Klesch flashlight + laser designator..
1x PBS-1 7.62x39 silencer..')
Task.create(name: 'Postman Pat - Part 1', dealer_id: 1, description: 'Obtain the letter on the messengers body on Factory..
Survive and extract from Factory..
Hand over the letter to Therapist..', rewards: '+5,900 EXP..
Prapor Rep +0.02..
40,000 Roubles..
1x Ana tactical Beta 2 battle backpack..
1x 6B2 armor (flora)..')
Task.create(name: 'Shaking up teller', dealer_id: 1, description: 'Obtain the valuable item in dorm room 203 on Customs..
(Optional) Gain access to dorm room 214..
Hand over the valuable item to Prapor..', rewards: '+5,900 EXP..
Prapor Rep +0.02..
Jaeger Rep -0.01..
75,000 Roubles..
1x Geiger-Muller counter..
Unlocks purchase of PBS-4 5.45x39 Silencer at Prapor LL3..
Unlocks purchase of Hexagon 12K sound suppressor at Prapor LL2..')
Task.create(name: 'The Punisher - Part 1', dealer_id: 1, description: 'Eliminate 15 Scavs on Shoreline while using AKM series weapon..', rewards: '+10,200 EXP..
Prapor Rep +0.02..
40,000 Roubles..
1x 6B43 Zabralo-Sh 6A Armor..
Unlocks purchase of SV-98 bolt-action sniper rifle at Prapor LL3..')
Task.create(name: 'The Punisher - Part 2', dealer_id: 1, description: 'Eliminate 12 Scavs on Shoreline while using a suppressed weapon..
Find 7 Lower half-masks in raid..
Hand over 7 Lower half-masks to Prapor..', rewards: '+13,100 EXP..
Prapor Rep +0.03..
50,000 Roubles..
2x Military cable..
1x AK-104 7.62x39 assault rifle..')
Task.create(name: 'The Punisher - Part 3', dealer_id: 1, description: 'Eliminate 25 Scavs on Customs while using AKS-74U..', rewards: '+11,700 EXP..
Prapor Rep +0.04..
Skier Rep +0.02..
2,500 Dollars..
1x DVL-10 Saboteur sniper rifle..
Unlocks purchase of 7.62x54R BT gzh at Prapor LL4..')
Task.create(name: 'The Punisher - Part 4', dealer_id: 1, description: 'Eliminate 10 Scavs on Woods while using a 12 gauge shotgun..
Eliminate 10 PMCs on Shoreline while wearing a balaclava (any type) and Scav Vest..
Find 5 Bars A-2607 knives in raid..
Hand over 5 Bars A-2607 knives to Prapor..', rewards: '+18,000 EXP..
Prapor Rep +0.03..
Jaeger Rep -0.01..
100,000 Roubles..
1x Colt M4A1 5.56x45 Assault Rifle (variant M4A1 SOPMOD II)..
Unlocks purchase of 5.45x39mm BT gs at Prapor LL3..')
Task.create(name: 'The Punisher - Part 5', dealer_id: 1, description: 'Find 1 AK-74N assault rifle in raid..
Hand over 1 AK-74N assault rifle to Prapor..
Find 1 M4A1 assault rifle in raid..
Hand over 1 M4A1 assault rifle to Prapor..
Find 2 PM 9x18PM pistols in raid..
Hand over 2 PM 9x18PM pistols to Prapor..
Eliminate 10 PMCs while wearing a PACA body armor and 6B47 helmet..', rewards: '+18,200 EXP..
Prapor Rep +0.03..
5,000 Dollars..
1x Pistol case..
1x Documents case..
Unlocks purchase of 7.62x39mm BP gzh at Prapor LL3..')
Task.create(name: 'The Punisher - Part 6', dealer_id: 1, description: 'Eliminate 15 PMCs while using an SVD sniper rifle..
Find 7 BEAR PMC dogtags in raid..
Hand over 7 BEAR PMC dogtags..
Find 7 USEC PMC dogtags in raid..
Hand over 7 USEC PMC dogtags..', rewards: '+19,400 EXP..
Prapor Rep +0.04..
Therapist Rep +0.05..
Skier Rep +0.01..
250,000 Roubles..
1x Secure container Epsilon..')
Task.create(name: 'Anesthesia', dealer_id: 1, description: 'Mark the first trading post with an MS2000 Marker on Shoreline..
Mark the second trading post with an MS2000 Marker on Shoreline..
Mark the third trading post with an MS2000 Marker on Shoreline..
Survive and extract from the location..', rewards: '+18,100 EXP..
Prapor Rep +0.04..
50,000 Roubles..
1x AS VAL..
100x 9x39mm SPP gs..
100x 9x39 mm SP6 gs..')
Task.create(name: 'Grenadier', dealer_id: 1, description: 'Eliminate 12 PMCs with grenades..', rewards: '+18,000 EXP..
Prapor Rep +0.02..
75,000 Roubles..
5x F-1 hand grenade..
240x 5.45x39mm BT gs..
Unlocks barter for 9x39 BP gs 8 pcs. ammo pack at Prapor LL4..
Unlocks purchase of 12.7x55 mm PS12B at Prapor LL4..')
Task.create(name: 'Insomnia', dealer_id: 1, description: 'Kill 30 PMCs during nighttime (22 to 05)..', rewards: '+18,200 EXP..
Prapor Rep +0.02..
85,000 Roubles..
2x PNV-10T Night Vision..')
Task.create(name: 'Test drive - Part 1', dealer_id: 1, description: 'Kill 5 PMCs using an M1A with a Hybrid 46 silencer and a Trijicon REAP-IR thermal scope..', rewards: '+18,200 EXP..
Prapor Rep +0.02..
300,000 Roubles..
2x RPK-16 5.45x39 light machine gun..
6x 95-round 5.45x39 magazine for RPK-16 and compatibles..
5x Golden neck chain..
Unlocks purchase of 9x39mm SPP gs at Prapor LL4..')
Task.create(name: 'Perfect mediator', dealer_id: 1, description: 'Reach level 4 loyalty with Ragman..
Reach level 4 loyalty with Skier..
Reach level 4 loyalty with Mechanic..
Reach level 4 loyalty with Peacekeeper..
Reach level 4 loyalty with Prapor..
Reach level 4 loyalty with Therapist..', rewards: '+20,900 EXP..
Prapor Rep +0.02..
55,000 Roubles..
1x T H I C C Weapon case..')
Task.create(name: 'Polikhim hobo', dealer_id: 1, description: 'Eliminate 25 Scavs on Customs..', rewards: '+5,900 EXP..
Prapor Rep +0.02..
50,000 Roubles..
3x F-1 hand grenade..
3x RDG-2B Smoke grenade..
1x Zarya stun grenade..')
Task.create(name: 'Regulated materials', dealer_id: 1, description: 'Find 1 6-STEN-140-M military battery in raid..
Hand over 1 6-STEN-140-M military battery to Prapor..
Find 5 OFZ 30x160mm shells in raid (can be crafted in the Hideout)..
Hand over 5 OFZ 30x160mm shells to Prapor..', rewards: '+14,800 EXP..
Prapor Rep +0.02..
150,000 Roubles..
Unlocks barter for ASh-12 12.7x55 assault rifle at Prapor LL4..')
Task.create(name: 'Big customer', dealer_id: 1, description: 'Find the transport with the chemicals..
Mark the chemical transport vehicle with an MS2000 Marker..
Survive and extract from Customs..', rewards: '+8,100 EXP..
Prapor Rep +0.03..
Jaeger Rep -0.01..
200,000 Roubles..
1x 6B2 armor (flora)..
2x Ammunition case..')
Task.create(name: 'No offence', dealer_id: 1, description: 'Obtain 10 M67 grenades..
Hand over 10 M67 grenades to Prapor..', rewards: 'Prapor Rep +0.25..')
Task.create(name: 'Capturing Outposts', dealer_id: 1, description: 'Eliminate 15 PMCs at the Scav base on Customs..
Eliminate 15 PMCs at the Scav base on Woods..
Eliminate 15 PMCs at the pier on Shoreline..', rewards: '+84,000 EXP..
1x ASh-12 12.7x55 assault rifle..
+1.5 Throwables Levels..')
Task.create(name: 'Intimidator', dealer_id: 1, description: 'Eliminate 40 Scavs with headshots..', rewards: '+84,000 EXP..
+1 Aim Drills Level..
+0.5 Assault Rifles Level..')
Task.create(name: 'Shortage', dealer_id: 2, description: 'Find 3 Salewa first aid kits in raid (can be crafted in the Hideout)..
Hand over 3 Salewa first aid kits to Therapist..', rewards: '+2,000 EXP..
Therapist Rep +0.03..
15,000 Roubles..
4x Analgin painkillers..
4x AI-2 medikit..
4x Immobilizing splint..')
Task.create(name: 'Operation Aquarius - Part 1', dealer_id: 2, description: 'Find the water hidden inside of the dorms on Customs..
Survive and extract from the location..', rewards: '+3,300 EXP..
Therapist Rep +0.03..
Skier Rep -0.02..
14,000 Roubles..
5x 0.6 liter water bottle..
Water filter..')
Task.create(name: 'Operation Aquarius - Part 2', dealer_id: 2, description: 'Eliminate 15 Scavs on Customs..', rewards: '+3,400 EXP..
Therapist Rep +0.03..
Skier Rep -0.02..
20,000 Roubles..
3x Esmarch tourniquet..
Immobilizing splint (alu)..
Unlocks purchase of Army bandage at Therapist LL2..')
Task.create(name: 'Sanitary Standards - Part 1', dealer_id: 2, description: 'Find 1 Gas analyzer in raid..
(Optional) Gain access to the locked pumping station on Factory..
Hand over 1 Gas analyzer to Therapist..', rewards: '+2,200 EXP..
Therapist Rep +0.03..
14,000 Roubles..
2x Car first aid kit..
Unlocks purchase of Car first aid kit at Therapist LL1..')
Task.create(name: 'Sanitary Standards - Part 2', dealer_id: 2, description: 'Find 2 Gas analyzers in raid..
Hand over 2 Gas analyzers to Therapist..', rewards: '+4,500 EXP..
Therapist Rep +0.03..
30,000 Roubles..
Propital regenerative stimulant injector..')
Task.create(name: 'Painkiller', dealer_id: 2, description: 'Find 4 Morphine injectors in raid (can be crafted in the Hideout)..
Hand over 4 Morphine injectors to Therapist..', rewards: '+4,500 EXP..
Therapist Rep +0.03..
17,000 Roubles..
5x Disposable syringe..
Silicone tube..
2x Analgin painkillers..
2x Pile of meds..')
Task.create(name: 'Pharmacist', dealer_id: 2, description: 'Obtain the case containing the device on Customs..
(Optional) Find the paramedics car on Customs..
(Optional) Get into two-story dorm room 114 on Customs..
Hand over the case to Therapist..', rewards: '+5,700 EXP..
Therapist Rep +0.04..
25,000 Roubles..
AFAK personal tactical first aid kit..
3x Pile of meds..
Unlocks barter for 6B47 Helmet with cover (flora digital) at Ragman LL2..')
Task.create(name: 'Car repair', dealer_id: 2, description: 'Find 4 Car batteries in raid (can be crafted in the Hideout)..
Find 8 Spark plugs in raid (can be crafted in the Hideout)..
Hand over 4 Car batteries to Therapist..
Hand over 8 Spark plugs to Therapist..', rewards: '+6,900 EXP..
Therapist Rep +0.04..
1,500 Dollars..
Grizzly First Aid Kit..
eTG-change regenerative stimulant injector..
Adrenaline injector..')
Task.create(name: 'Hippocratic Oath', dealer_id: 2, description: 'Hand over 500 USD to Therapist..', rewards: 'Therapist Rep +0.2..')
Task.create(name: 'Disease history', dealer_id: 2, description: 'Obtain Medical record #1 on Reserve..
Obtain Medical record #2 on Reserve..
Hand over the first journal to Therapist..
Hand over the second journal to Therapist..', rewards: '+7,200 EXP..
Therapist Rep +0.03..
30,000 Roubles..
2x Grizzly First Aid Kit..
Grizzly First Aid Kit..
Ibuprofen painkillers..
5x CALOK-B Hemostatic..')
Task.create(name: 'Supply plans', dealer_id: 2, description: 'Obtain the Secure Folder 0052 in the sawmill on Woods..
Hand over Secure Folder 0052 to Therapist..', rewards: '+7,500 EXP..
Therapist Rep +0.04..
75,000 Roubles..
CMS kit..')
Task.create(name: 'Health Care Privacy - Part 1', dealer_id: 2, description: 'Find and mark the first ambulance with an MS2000 Marker on Shoreline..
Find and mark the second ambulance with an MS2000 Marker on Shoreline..
Find and mark the third ambulance with an MS2000 Marker on Shoreline..
Survive and extract from the location..', rewards: '+4,800 EXP..
Therapist Rep +0.03..
22,000 Roubles..
2x IFAK personal tactical first aid kit..
Unlocks purchase of IFAK personal tactical first aid kit at Therapist LL3..')
Task.create(name: 'Health Care Privacy - Part 2', dealer_id: 2, description: 'Search the room in the Health Resort for any documents about TerraGroups research..
Hand over the retrieved information..
Survive and extract from the location..', rewards: '+5,900 EXP..
Therapist Rep +0.04..
24,000 Roubles..
4x Salewa FIRST AID KIT..')
Task.create(name: 'Health Care Privacy - Part 3', dealer_id: 2, description: 'Find the van that belonged to the head of the health resort Medical Services..
Take a sample of the blood..
Hand over the blood sample..
Survive and extract from the location..', rewards: '+5,900 EXP..
Therapist Rep +0.04..
26,000 Roubles..
2x Morphine injector..
2x Adrenaline injector..
Unlocks purchase of Morphine injector at Therapist LL4..')
Task.create(name: 'An Apple a day keeps the Doctor away', dealer_id: 2, description: 'Hand over 400,000 RUB to Therapist..', rewards: '+2 Health skill levels..')
Task.create(name: 'Health Care Privacy - Part 4', dealer_id: 2, description: 'Reach the required Health skill level of 4..', rewards: '+6,000 EXP..
Therapist Rep +0.04..
29,000 Roubles..
2x Grizzly First Aid Kit..
2x Saline solution..')
Task.create(name: 'Athlete', dealer_id: 2, description: 'Reach the required Health skill level of 10..', rewards: '+21,900 EXP..
Therapist Rep +0.04..
110,000 Roubles..
Dundukk sport sunglasses..
3x Zagustin hemostatic drug injector..
3x Adrenaline injector..
Unlocks purchase of Adrenaline injector at Therapist LL4..')
Task.create(name: 'Private clinic', dealer_id: 2, description: 'Find 1 Ophthalmoscope in raid..
Find 1 LEDX Skin Transilluminator in raid..
Hand over 1 Ophthalmoscope to Therapist..
Hand over 1 LEDX Skin Transilluminator to Therapist..', rewards: '+30,600 EXP..
Therapist Rep +0.05..
130,000 Roubles..
1x T H I C C Items case..
1x Health Resort west wing room 306 key..')
Task.create(name: 'Health Care Privacy - Part 5', dealer_id: 2, description: 'Locate the drop spot on Factory at night..
Obtain 3 packs of Gunpowder "Kite" and stash them in the designated spot..', rewards: '+7,300 EXP..
Therapist Rep +0.04..
35,000 Roubles..
Meds case..')
Task.create(name: 'Decontamination service', dealer_id: 2, description: 'Eliminate 40 Scavs on Interchange in close range (less than 60 meters) while wearing specific gear..', rewards: '+7,400 EXP..
Therapist Rep +0.05..
300,000 Roubles..
3x Morphine injector..
3x IFAK personal tactical first aid kit..
3x GP-7 gasmask..')
Task.create(name: 'General wares', dealer_id: 2, description: 'Find 15 Small cans of beef stew in raid (can be crafted in the Hideout)..
Hand over 15 Small cans of beef stew to Therapist..', rewards: '+4,800 EXP..
Therapist Rep +0.03..
30,000 Roubles..
4x Can of pacific saury..
2x Iskra lunch box..
2x Majaica Coffee..')
Task.create(name: 'Colleagues - Part 1', dealer_id: 2, description: 'Locate the group that was sent to the Health Resort..
Locate the group that was sent to the pier..
Locate the group that was sent to the cottages..
Survive and extract from the location..', rewards: '+12,300 EXP..
Therapist Rep +0.04..
45,000 Roubles..
2x SJ1 TGLabs combat stimulant injector..
2x SJ6 TGLabs combat stimulant injector..')
Task.create(name: 'Colleagues - Part 2', dealer_id: 2, description: 'Obtain Sanitars Surgery kit marked with a blue symbol..
Hand over Sanitar.s Surgery kit to Therapist..
Obtain Sanitars ophtalmoscope..
Hand over Sanitars optalmoscope to Therapist..', rewards: '+12,400 EXP..
Therapist Rep +0.04..
60,000 Roubles..
Surv12 field surgical kit..
P22 injector..')
Task.create(name: 'Postman Pat - Part 2', dealer_id: 2, description: 'Hand over the letter from the messenger to Therapist..', rewards: '+3,500 EXP..
Therapist Rep +0.02..
5,000 Roubles..
Unlocks purchase of Salewa FIRST AID KIT at Therapist LL2..')
Task.create(name: 'Out of curiosity', dealer_id: 2, description: 'Find the transport with the chemicals on Customs..
Mark the vehicle with an MS2000 Marker..
Survive and extract from Customs..', rewards: '+7,700 EXP..
Therapist Rep +0.04..
170,000 Roubles..
Meds case..')
Task.create(name: 'Supplier', dealer_id: 4, description: 'Hand over 1 found in raid Module-3M armor to Skier..
Hand over 1 found in raid TOZ-106 shotgun to Skier..', rewards: '+3,300 EXP..
Skier Rep +0.05..
60,000 Roubles..
Saiga-9 9x19 Carbine..
Unlocks purchase of Saiga-9 9x19 Carbine at Skier LL1..')
Task.create(name: 'The Extortionist', dealer_id: 4, description: 'Obtain the hidden valuable cargo on Customs..
(Optional) Find the messengers body..
(Optional) Findthe place where the messenger hid the cargo..
Hand over the valuable cargo to Skier..', rewards: '+3,200 EXP..
Skier Rep +0.04..
500 Dollars..
Vepr AKM / VPO-209 366TKM carbine..
3x Izhmash AK magazine (issued ???55 or later) 30-round for 7.62x39 AK and compatibles..
20x .366 TKM AP-M..')
Task.create(name: 'Stirrup', dealer_id: 4, description: 'Eliminate 3 PMCs while using pistols', rewards: '+5,300 EXP..
Skier Rep +0.05..
Prapor Rep -0.05..
Therapist Rep -0.02..
70,000 Roubles..
Camelbak Tri-Zip Backpack..
Unlocks purchase of Vepr AKM / VPO-209 366TKM carbine at Skier LL1..')
Task.create(name: 'Whats on the flash drive?', dealer_id: 4, description: '	
Find 2 Secure flash drives in raid (can be crafted in the Hideout)..
Hand over 2 Secure flash drives to Skier..', rewards: '+4,500 EXP..
Skier Rep +0.04..
Jaeger Rep -0.01..
30,000 Roubles..
Simonov Semi-Automatic Carbine SKS 7.62x39 Hunting Rifle Version..
2x ProMag SKS-A5 7.62x39 20-round SKS magazine..
1x AK Hexagon DTKP MK.2 7.62x39 sound suppressor..')
Task.create(name: 'Golden Swag', dealer_id: 4, description: 'Find the Gilded Zibbo lighter..
Stash the Gilded Zibbo lighter in the bunkhouse in the trailer parking lot on Customs..', rewards: '+4,500 EXP..
Skier Rep +0.04..
+17,000 Roubles..
STM-9 Gen.2 9x19 carbine..
2x Glock 9x19 "Big Stick" 33-round magazine..
120x 9x19mm T gzh..
Unlocks purchase of VOMZ Pilad P1X42 "WEAVER" reflex sight at Skier LL2..')
Task.create(name: 'Chemical - Part 1', dealer_id: 4, description: 'Obtain information about the Deputy Chiefs past life on Customs..
(Optional) Find the sleeping place of the former Deputy Chief of Security on Customs..
Hand over the information to Skier..
Obtain items that can help the investigation..
Hand over the items to Skier..', rewards: '+4,800 EXP..
Skier Rep +0.04..
15,000 Roubles..
MSA ACH TC-2002 MICH Series Helmet..')
Task.create(name: 'Chemical - Part 2', dealer_id: 4, description: 'Find any evidence on Customs that could help with the investigation..
Hand over the evidence to Skier..
Find any information on Customs that could help with the investigation..
Hand over the info to Skier..', rewards: '+4,800 EXP..
Skier Rep +0.04..
15,000 Roubles..
3x F-1 hand grenade..
2x TP-200 TNT brick..
Unlocks purchase of SAI-02 10-round 12x76 magazine for SOK-12 and compatible weapons at Jaeger LL2..')
Task.create(name: 'Chemical - Part 3', dealer_id: 4, description: 'Obtain the chemical-filled syringe hidden in Factory..
Hand over the chemical-filled syring to Skier..', rewards: '+5,400 EXP..
Skier Rep +0.04..
Jaeger Rep -0.01..
22,000 Roubles..
Zenit-Belomo PSO 1M2-1 4x24 scope..
4x Zarya stun grenade..')
Task.create(name: 'Chemical - Part 4', dealer_id: 4, description: 'Find the transport with the chemicals..
Mark the chemical transport vehicle with an MS2000 Marker..
Survive and extract from Customs..', rewards: '+6,500 EXP..
Skier Rep +0.04..
Jaeger Rep -0.01..
35,000 Roubles..
1x Grenade case..
Unlocks purchase of ZSh-1-2M helmet (black) at Ragman LL3..')
Task.create(name: 'Fishing Gear', dealer_id: 5, description: 'Find the boat hidden next to the breakwater on Shoreline..
Stash 1 sniper rifle in the boat..
Stash 1 multitool in the boat..
Survive and extract from the location..', rewards: '+5,400 EXP..
Peacekeeper Rep +0.02..
800 Dollars..
Kiver-M Helmet..
Unlocks purchase of Aimpoint Micro T-1 reflex sight at Peacekeeper LL1..')
Task.create(name: 'The Cult - Part 1', dealer_id: 5, description: 'Find the missing informant on Shoreline..
Survive and extract from the location..', rewards: '+6,700 EXP..
Peacekeeper Rep +0.06..
700 Dollars..
3x Golden neck chain..
Unlocks purchase of 5.56x45mm M856A1 at Peacekeeper LL2..')
Task.create(name: 'The Cult - Part 2', dealer_id: 5, description: 'Put the MS2000 Marker in the first ritual spot on Woods..
Put the MS2000 Marker in the ritual spot on Customs..
Put the MS2000 Marker in the second ritual spot on Woods..
Put the MS2000 Marker in the ritual spot on Shoreline..', rewards: '+8,200 EXP..
Peacekeeper Rep +0.07..
850 Dollars..
3x Gas analyzer..
3x Geiger-Muller counter..')
Task.create(name: 'Cargo X - Part 1', dealer_id: 5, description: 'Obtain the data in the computer room in the east wing of the Health Resort..
Hand over the retrieved data to Peacekeeper..', rewards: '+10,400 EXP..
Peacekeeper Rep +0.07..
700 Dollars..
Pistol case..')
Task.create(name: 'Cargo X - Part 2', dealer_id: 5, description: 'Find the room with reservoirs in the Health Resort..
Obtain any information about the second part of the cargo shipment..
Hand over the retrieved information to Peacekeeper..', rewards: '+8,600 EXP..
Peacekeeper Rep +0.07..
850 Dollars..
Unlocks purchase of KAC QDSS NT-4 5.56x45 silencer (Black) at Peacekeeper LL3..')
Task.create(name: 'Cargo X - Part 3', dealer_id: 5, description: 'Find the hidden TerraGroup cargo on Shoreline..
Survive and extract from the location..', rewards: '+10,700 EXP..
Peacekeeper Rep +0.07..
900 Dollars..
HK MP5 9x19 submachinegun (Navy 3 Round Burst)..
3x Standard MP5 30-round 9x19 magazine..')
Task.create(name: 'Gunsmith - Part 1', dealer_id: 6, description: 'Modify an MP-133 to comply with the required specification..', rewards: '+6,500 EXP..
Mechanic Rep +0.04..
20,000 Roubles..
GLOCK 17 9x19 pistol..
50x 9x19mm Pst gzh..')
Task.create(name: 'Gunsmith - Part 2', dealer_id: 6, description: 'Modify an AKS-74U to comply with the given specifications..', rewards: '+6,000 EXP..
Mechanic Rep +0.04..
60,000 Roubles..')
Task.create(name: 'Gunsmith - Part 3', dealer_id: 6, description: 'Modify an MP5 to comply with the given specifications..', rewards: '+8,000 EXP..
Mechanic Rep +0.05..
500 Euros..
Submachinegun PP-19-01 Vityaz-SN 9x19..')
Task.create(name: 'Gunsmith - Part 4', dealer_id: 6, description: 'Modify an M4A1 to comply with the given specifications..', rewards: '+10,100 EXP..
Mechanic Rep +0.05..
800 Euros..
Physical bitcoin..')
Task.create(name: 'Gunsmith - Part 5', dealer_id: 6, description: 'Modify a DVL-10 to comply with the given specifications..', rewards: '+13,900 EXP..
Mechanic Rep +0.06..
200,000 Roubles..')
Task.create(name: 'Gunsmith - Part 6', dealer_id: 6, description: 'Modify an R11 RSASS to comply with the given specifications..', rewards: '+14,900 EXP..
Mechanic Rep +0.06..
1,000 Euros..
2x Physical bitcoin..')
Task.create(name: 'Gunsmith - Part 7', dealer_id: 6, description: 'Modify a Remington Model 870 to comply with the given specifications..', rewards: '+16,000 EXP..
Mechanic Rep +0.06..
100,000 Roubles..
GLOCK 17 9x19 pistol..')
Task.create(name: 'Acquaintance', dealer_id: 8, description: 'Find 3 Iskra ration pack in raid (can be crafted in the Hideout)..
Find 2 Emelya rye croutons in raid..
Find 2 Large can of beef stew in raid..', rewards: '+3,900 EXP..
Jaeger Rep +0.01..
50,000 Roubles..
1x SurvL Survivor Lighter..')
Task.create(name: 'The survivalist path - Unprotected, but dangerous', dealer_id: 8, description: 'Eliminate 5 Scavs on Woods without wearing any body armor..', rewards: '+5,600 EXP..
Jaeger Rep +0.02..
35,000 Roubles..
1x AKMSN 7.62x39 assault rifle..
200x 7.62x39mm PS gzh..')
Task.create(name: 'The survivalist path - Zhivchik', dealer_id: 8, description: 'Survive for 5 minutes while being completely dehydrated..
Survive and extract from the location..', rewards: '+5,700 EXP..
Jaeger Rep +0.02..
30,000 Roubles..
2x Water bottle with a filter Aquamari..
2x water filters..')
Task.create(name: 'The survivalist path - Wounded beast', dealer_id: 8, description: 'Eliminate 3 Scavs while suffering from pain effect..', rewards: 'Jaeger Rep +0.02..
+5,800 EXP..
65,000 Roubles..
Stress Resistance+1 level..')








puts 'Finished seeding'