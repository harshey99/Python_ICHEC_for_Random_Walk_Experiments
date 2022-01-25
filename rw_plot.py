import glob
import numpy as np
import matplotlib.pyplot as plt

def plot(x,y):
    fig = plt.figure()
    axis = fig.add_subplot(1, 1, 1)
    plt.xlabel("Dimensions")
    plt.ylabel("Distance from origin")
    axis.scatter(x, y)
    plt.show()



def main():
    files = sorted(glob.glob('rw_results_*'))
    data_points = np.concatenate([np.loadtxt(f) for f in files])
    x = data_points[:,0]
    y = data_points[:,1]
    plot(x,y)

if __name__ == "__main__":
    main()