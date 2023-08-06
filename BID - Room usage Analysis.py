#!/usr/bin/env python
# coding: utf-8

# In[1]:


pip install pandas


# In[2]:


import pandas as pd
df = pd.read_csv('meetings_occupancy.csv')


# In[3]:


print(df.head())     # In order to display the first few rows of the dataset
print(df.info())     # Information about the dataset
print(df.describe()) # A summary statistics of the dataset


# In[4]:


pip install matplotlib


# In[5]:


import matplotlib.pyplot as plt


# In[6]:


print(df.columns)


# In[8]:


pip install dateparser


# In[ ]:


# I made this to deal with the date format from this csv file -> using dataparser


# In[34]:


df.rename(columns={'room': 'Room',
                   'Room Location': 'Room Location',
                   'organizer_org_unit_cd': 'Organizer Org Unit',
                   'attendee_org_unit_cd': 'Attendee Org Unit',
                   'attendees': 'Attendees',
                   'name': 'Name',
                   'last_name': 'Last Name'},
          inplace=True)


# In[35]:


print(df.columns)


# In[39]:


# Calculate the duration in minutes
df['Duration'] = (df['end_dt'] - df['start_dt']).dt.total_seconds() / 60


# In[40]:


# Perform the analysis
room_frequency = df['room'].value_counts()
room_duration = df.groupby('room')['Duration'].sum()
room_occupancy = room_duration / (60 * 8)  # Assuming an 8-hour workday


# In[13]:


# Plot the room frequency
plt.figure(figsize=(10, 5))
room_frequency.plot(kind='bar', color='steelblue')
plt.title('Room Frequency')
plt.xlabel('Room')
plt.ylabel('Frequency')
plt.xticks(rotation=0)
plt.show()


# In[41]:


# Print the room duration and occupancy
print("Room Durations:")
print(room_duration)
print("\nRoom Occupancy:")
print(room_occupancy)


# In[42]:


# Check column names
print(df.columns)

# Trim whitespace from column names
df.columns = df.columns.str.strip()

# Verify data source and column names again
print(df.columns)


# In[43]:


missing_values = df.isnull().sum()
print(missing_values)


# In[44]:


get_ipython().system('pip install python-dateutil')


# In[45]:


def calculate_room_utilization(dataframe):
    # Calculate meeting duration in minutes
    dataframe['Duration'] = (dataframe['end_dt'] - dataframe['start_dt']).dt.total_seconds() / 60

    # Calculate total meeting duration per room
    room_duration = dataframe.groupby('room')['Duration'].sum()

    # Calculate the utilization rate for each room
    room_utilization = room_duration / (60 * 24)  # Assuming a 24-hour day

    return room_utilization

# Load the dataset into a DataFrame
df = pd.read_csv('meetings_occupancy.csv')

# Convert the 'start_dt' and 'end_dt' columns to datetime using dateutil.parser.parse
df['start_dt'] = df['start_dt'].apply(parse)
df['end_dt'] = df['end_dt'].apply(parse)

# Calculate room utilization
room_utilization = calculate_room_utilization(df)

# Print the results
print("Utilization Rate by Room:")
print(room_utilization)


# In[47]:


def calculate_room_utilization(dataframe):
    # Calculate meeting duration in minutes
    dataframe['Duration'] = (dataframe['end_dt'] - dataframe['start_dt']).dt.total_seconds() / 60

    # Calculate total meeting duration per room
    room_duration = dataframe.groupby('room')['Duration'].sum()

    # Calculate the utilization rate for each room
    room_utilization = room_duration / (60 * 24)  # Assuming a 24-hour day

    # Calculate average meeting duration by room
    average_duration = dataframe.groupby('room')['Duration'].mean()

    return room_utilization, average_duration

# Load the dataset into a DataFrame
df = pd.read_csv('meetings_occupancy.csv')

# Convert the 'start_dt' and 'end_dt' columns to datetime using dateutil.parser.parse
df['start_dt'] = df['start_dt'].apply(parse)
df['end_dt'] = df['end_dt'].apply(parse)

# Calculate room utilization and average meeting duration
room_utilization, average_duration = calculate_room_utilization(df)

# Print the results
print("Utilization Rate by Room:")
print(room_utilization)
print("\nAverage Meeting Duration by Room:")
print(average_duration)


# In[49]:


def calculate_room_utilization(dataframe):
    # Calculate meeting duration in minutes
    dataframe['Duration'] = (dataframe['end_dt'] - dataframe['start_dt']).dt.total_seconds() / 60

    # Calculate total meeting duration per room
    room_duration = dataframe.groupby('room')['Duration'].sum()

    # Calculate the utilization rate for each room
    room_utilization = room_duration / (60 * 24)  # Assuming a 24-hour day

    # Calculate average meeting duration by room
    average_duration = dataframe.groupby('room')['Duration'].mean()

    # Calculate average number of attendees by room
    average_attendees = dataframe.groupby('room')['attendees'].mean()

    return room_utilization, average_duration, average_attendees

# Load the dataset into a DataFrame
df = pd.read_csv('meetings_occupancy.csv')

# Convert the 'start_dt' and 'end_dt' columns to datetime using dateutil.parser.parse
df['start_dt'] = df['start_dt'].apply(parse)
df['end_dt'] = df['end_dt'].apply(parse)

# Calculate room utilization, average meeting duration, and average number of attendees
room_utilization, average_duration, average_attendees = calculate_room_utilization(df)

# Print the results
print("Utilization Rate by Room:")
print(room_utilization)
print("\nAverage Meeting Duration by Room:")
print(average_duration)
print("\nAverage Number of Attendees by Room:")
print(average_attendees)


# In[51]:


def calculate_room_utilization(dataframe):
    # Calculate meeting duration in minutes
    dataframe['Duration'] = (dataframe['end_dt'] - dataframe['start_dt']).dt.total_seconds() / 60

    # Calculate total meeting duration per room
    room_duration = dataframe.groupby('room')['Duration'].sum()

    # Calculate the utilization rate for each room
    room_utilization = room_duration / (60 * 24)  # Assuming a 24-hour day

    # Calculate average meeting duration by room
    average_duration = dataframe.groupby('room')['Duration'].mean()

    # Find underutilized rooms
    threshold = 50  # Utilization threshold (%)
    underutilized_rooms = room_utilization[room_utilization < threshold]

    # Get average meeting duration for underutilized rooms
    underutilized_room_durations = average_duration[room_utilization < threshold]

    return room_utilization, average_duration, underutilized_rooms, underutilized_room_durations


# In[52]:


# Load the dataset into a DataFrame
df = pd.read_csv('meetings_occupancy.csv')

# Convert the 'start_dt' and 'end_dt' columns to datetime using dateutil.parser.parse
df['start_dt'] = df['start_dt'].apply(parse)
df['end_dt'] = df['end_dt'].apply(parse)

# Calculate room utilization, average meeting duration, underutilized rooms, and their durations
room_utilization, average_duration, underutilized_rooms, underutilized_room_durations = calculate_room_utilization(df)

# Print the results
print("Utilization Rate by Room:")
print(room_utilization)
print("\nAverage Meeting Duration by Room:")
print(average_duration)
print("\nUnderutilized Rooms:")
print(underutilized_rooms)
print("\nAverage Meeting Duration for Underutilized Rooms:")
print(underutilized_room_durations)


# In[54]:


# Calculate the number of meetings per day
occupancy_by_day = df['start_dt'].dt.day_name().value_counts().reindex(['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'])

# Plot the occupancy by day
plt.figure(figsize=(10, 5))
occupancy_by_day.plot(kind='bar', color='steelblue')
plt.title('Conference Room Occupancy by Day')
plt.xlabel('Day of Week')
plt.ylabel('Number of Meetings')

# Display the plot
plt.show()


# In[55]:


# Calculate the number of meetings per hour
occupancy_by_hour = df['start_dt'].dt.hour.value_counts().sort_index()

# Plot the occupancy by hour
plt.figure(figsize=(10, 5))
occupancy_by_hour.plot(kind='bar', color='steelblue')
plt.title('Conference Room Occupancy by Hour')
plt.xlabel('Hour')
plt.ylabel('Number of Meetings')

# Display the plot
plt.show()


# In[60]:


# Calculate the utilization rate by location
location_utilization = df.groupby('Room Location')['Duration'].sum() / (60 * 24)  # Assuming a 24-hour day

# Plot the room utilization by location
plt.figure(figsize=(10, 5))
location_utilization.sort_values(ascending=False).plot(kind='bar', color='steelblue')
plt.title('Conference Room Utilization by Location')
plt.xlabel('Location')
plt.ylabel('Utilization Rate (%)')

# Display the plot
plt.show()


# In[61]:


pip install tabulate


# In[62]:


from tabulate import tabulate

# Creating a DataFrame with the utilization rates
utilization_table = pd.DataFrame(location_utilization).reset_index()
utilization_table.columns = ['Location', 'Utilization Rate']
utilization_table.sort_values('Utilization Rate', ascending=False, inplace=True)

# Print the utilization table
print(tabulate(utilization_table, headers='keys', tablefmt='psql'))


# In[63]:


import pandas as pd

# Load the dataset
df = pd.read_csv('meetings_occupancy.csv')

# Start and end dates to datetime format
df['start_dt'] = pd.to_datetime(df['start_dt'], infer_datetime_format=True, errors='coerce')
df['end_dt'] = pd.to_datetime(df['end_dt'], infer_datetime_format=True, errors='coerce')

# This step is meant to check if any date entries failed to convert
failed_conversions = df['start_dt'].isnull() | df['end_dt'].isnull()
print("Failed Conversions:")
print(df[failed_conversions])


# In[64]:


import pandas as pd
from datetime import datetime

# Load the dataset
df = pd.read_csv('meetings_occupancy.csv')

# Customize date parsing function
def parse_date(date_str):
    formats = ['%a %b %d %H:%M:%S %Z %Y', '%Y-%m-%d %H:%M:%S']
    for fmt in formats:
        try:
            return datetime.strptime(date_str, fmt)
        except ValueError:
            pass
    return None

# Convert 'start_dt' column to datetime format
df['start_dt'] = df['start_dt'].apply(parse_date)

# Convert 'end_dt' column to datetime format
df['end_dt'] = df['end_dt'].apply(parse_date)

# Display the updated dataframe
print(df.head())


# In[65]:


pip install scikit-learn


# In[66]:


import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# Load the dataset
df = pd.read_csv('meetings_occupancy.csv')

# Selecting relevant features for the prediction
features = ['room', 'organizer_org_unit_cd']
target = 'attendees'
df = df[features + [target]]

# Converting categorical features to numerical labels
label_encoder = LabelEncoder()
df['room'] = label_encoder.fit_transform(df['room'])
df['organizer_org_unit_cd'] = label_encoder.fit_transform(df['organizer_org_unit_cd'])

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(df[features], df[target], test_size=0.2, random_state=42)

# Train a linear regression model
model = LinearRegression()
model.fit(X_train, y_train)

# Predictions on the test set
y_pred = model.predict(X_test)

# Evaluation of the model
mse = mean_squared_error(y_test, y_pred)
print("Mean Squared Error:", mse)


# In[ ]:


import pandas as pd
from sklearn.cluster import KMeans
from sklearn.metrics import silhouette_score
from sklearn.preprocessing import OneHotEncoder

# Load the dataset
df = pd.read_csv('meetings_occupancy.csv')

# Select relevant features for analysis
features = ['room', 'organizer_org_unit_cd', 'attendees']

# Categorical features to one-hot encoded features
categorical_features = ['room', 'organizer_org_unit_cd']
df_encoded = pd.get_dummies(df[features], columns=categorical_features)

# Clustering algorithm to identify patterns
X = df_encoded.values
kmeans = KMeans(n_clusters=3, random_state=42)
clusters = kmeans.fit_predict(X)

# Evaluation of the clustering results
silhouette_avg = silhouette_score(X, clusters)
print("Silhouette Score:", silhouette_avg)

# Analyze cluster characteristics and room usage patterns
df['cluster'] = clusters

# Average attendees per cluster
average_attendees_per_cluster = df.groupby('cluster')['attendees'].mean()
print("Average Attendees per Cluster:")
print(average_attendees_per_cluster)

# Underutilized rooms or rooms requiring improvements
underutilized_rooms = df[df['cluster'] == 0]['room']
rooms_requiring_improvements = df[df['cluster'] == 1]['room']

print("Underutilized Rooms:")
print(underutilized_rooms)
print("Rooms Requiring Improvements:")
print(rooms_requiring_improvements)

# Recommendations based on the analysis
print("Recommendations:")
print("- For underutilized rooms, consider promoting awareness and incentives to increase bookings.")
print("- For rooms requiring improvements, assess the facilities and amenities to meet user needs and preferences.")


# In[ ]:


import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# Load the dataset
df = pd.read_csv('meetings_occupancy.csv')

# Select relevant features for prediction
features = ['room', 'organizer_org_unit_cd']
target = 'attendees'
df = df[features + [target]]

# Convert categorical features to numerical labels
label_encoder = LabelEncoder()
df['room'] = label_encoder.fit_transform(df['room'])
df['organizer_org_unit_cd'] = label_encoder.fit_transform(df['organizer_org_unit_cd'])

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(df[features], df[target], test_size=0.2, random_state=42)

# Create polynomial features
degree = 2  # Choose the degree of polynomial features
poly = PolynomialFeatures(degree=degree)
X_train_poly = poly.fit_transform(X_train)
X_test_poly = poly.transform(X_test)

# Train the polynomial regression model
model = LinearRegression()
model.fit(X_train_poly, y_train)

# Make predictions on the test set
y_pred = model.predict(X_test_poly)

# Evaluate the model
mse = mean_squared_error(y_test, y_pred)
print("Mean Squared Error:", mse)


# In[ ]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.preprocessing import PolynomialFeatures
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error

# Load the dataset
df = pd.read_csv('meetings_occupancy.csv')

# Select relevant features for the prediction
features = ['room', 'organizer_org_unit_cd']
target = 'attendees'
df = df[features + [target]]

# Convert categorical features to numerical labels
label_encoder = LabelEncoder()
df['room'] = label_encoder.fit_transform(df['room'])
df['organizer_org_unit_cd'] = label_encoder.fit_transform(df['organizer_org_unit_cd'])

# Split the data into training and test sets
X_train, X_test, y_train, y_test = train_test_split(df[features], df[target], test_size=0.2, random_state=42)

# Create polynomial features
degree = 2  # Choose the degree of the polynomial
poly_features = PolynomialFeatures(degree=degree)
X_train_poly = poly_features.fit_transform(X_train)
X_test_poly = poly_features.transform(X_test)

# Train a linear regression model
model = LinearRegression()
model.fit(X_train_poly, y_train)

# Make predictions on the test set
y_pred = model.predict(X_test_poly)

# Evaluate the model
mse = mean_squared_error(y_test, y_pred)
print("Mean Squared Error:", mse)

# Analyze the coefficients
coefficients = model.coef_
intercept = model.intercept_
print("Intercept:", intercept)
print("Coefficients:", coefficients)

# Visualize the predictions and actual values
plt.scatter(X_test.iloc[:, 0], y_test, color='blue', label='Actual')
plt.scatter(X_test.iloc[:, 0], y_pred, color='red', label='Predicted')
plt.xlabel('Room')
plt.ylabel('Attendees')
plt.legend()
plt.show()


# In[ ]:


# Print the results
print("\nUnderutilized Rooms:")
print(underutilized_rooms)
print("\nAverage Meeting Duration for Underutilized Rooms:")
print(underutilized_room_durations)
print("\nAverage Number of Attendees for Underutilized Rooms:")
print(underutilized_room_attendees)

# Recommendations
print("\nRecommendations:")
print("For underutilized rooms:")
print("- Promote awareness of the room's availability to increase bookings.")
print("- Consider adjusting the room's facilities or amenities to better meet user needs.")
print("- Encourage collaboration or specific types of meetings that are suitable for the room.")
print("\nFor overall optimization:")
print("- Implement a robust booking system to avoid overlapping bookings and improve room allocation efficiency.")
print("- Analyze meeting patterns and consider adjusting room sizes or configurations based on the most common meeting sizes or types.")
print("- Consider introducing flexible seating arrangements or collaborative spaces to accommodate different meeting styles.")


# In[ ]:




