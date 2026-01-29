# 5. Creating Your First Job

## 5.1 Setting Up Vehicle Parameters

1. Go to **Job Management** → **Create New Job**
2. Click **Add Vehicle**
3. Fill in the following information:
   - **Vehicle Name** - For example, "John Deere 1860"
   - **Vehicle Model** - Select from the list or enter manually
   - **Wheel Base** - Distance between front and rear wheels of the machinery (unit: meters)
   - **Axle Distance** - Distance from front wheels to rear wheels (unit: meters)
4. Click **Save**

## 5.2 Measure and Enter Implement Parameters

**Implement Width** is a key parameter for autonomous driving:

1. Measure the working width of your implement (unit: meters)
   - Example: Seeder width is 3.5 meters
2. Go to **Job Management** → **Implement Settings**
3. Click **Create New Implement**
4. Fill in:
   - **Implement Name** - For example, "John Deere Seeder"
   - **Working Width** - Enter the measured width
   - **Implement Type** - Select seeding, spraying, tilling, etc.
5. Click **Save**

## 5.3 Create Farm and Field Blocks

1. Go to **Farm Management**
2. Click **Create New Farm**
   - Enter farm name (for example, "Zhongguancun Farm")
   - Select location
   - Save
3. Create **field blocks** under the farm
   - Click **Add Field Block**
   - Enter field block number (for example, "Block A1")
   - Mark the field block location
4. Create **tasks**
   - Click **Create New Task**
   - Enter task name (for example, "Winter Wheat Seeding 2026")
   - Select field block and implement
   - Set task date
   - Save