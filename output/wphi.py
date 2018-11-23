
# coding: utf-8

# # In this exercise we will learn how to plot data from a multicolumn data file in Jupyter Notebook

# In[1]:


import numpy as np
import matplotlib.pyplot as plt
from matplotlib import gridspec
from scipy import interpolate


# ### Now we import the data files.

# In[2]:


t000 = 'explanatory00_background.dat'
t001 = 'explanatory01_background.dat'
t002 = 'explanatory02_background.dat'
t003 = 'explanatory03_background.dat'
t004 = 'explanatory04_background.dat'



# ### HERE WE TRANSFORM OUR FILE IN A ARRAY BY COLUMNS

# In[3]:

data_t000 = np.loadtxt(t000).T
data_t001 = np.loadtxt(t001).T
data_t002 = np.loadtxt(t002).T
data_t003 = np.loadtxt(t003).T
data_t004 = np.loadtxt(t004).T



# In[4]:

z000 = data_t000[0]
z001 = data_t001[0]
z002 = data_t002[0]
z003 = data_t003[0]
z004 = data_t004[0]
theta000 = data_t000[16]
theta001 = data_t001[16]
theta002 = data_t002[16]
theta003 = data_t003[16]
theta004 = data_t004[16]


# ##### Plot script

# In[33]:



fig = plt.figure()
ax1 = fig.add_subplot(111)
#plt.xscale('log')
plt.xlim(0.0001, 1)
plt.ylim(-1.1, -0.9)
ax1.text(1.e-3, -1.025, r'PLANCK COLLABORATION 2015', fontsize=10, color='r')
ax1.axhspan(-1.051, -0.961, alpha=0.9, color='linen')
ax1.plot(z000, - np.cos(theta000), '-', linewidth=2.0, color='r', label=r'$\beta = 0$')
ax1.plot(z001, - np.cos(theta001), '-', linewidth=2.0, color='b', label=r'$\beta = 3$')
ax1.plot(z002, - np.cos(theta002), '-', linewidth=2.0, color='y', label=r'$\beta = 5$')
ax1.plot(z003, - np.cos(theta003), '-', linewidth=2.0, color='g', label=r'$\beta = 8$')
ax1.plot(z004, - np.cos(theta004), '-', linewidth=2.0, color='g', label=r'$\beta = 80$')
legend = ax1.legend(loc='lower right', prop={'size':12}, frameon=False, ncol=1)
plt.savefig('eos.eps', dpi=100)
plt.show()


# #### Plot with different axes range

# In[37]:



# In[52]:




