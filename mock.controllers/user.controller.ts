interface IUser {
  id: number;
  username: string;
  email: string;
  isAdmin?: boolean;
}

const mockUserListExampleTS: IUser[] = [
  {
    id: 1,
    username: "Alice",
    email: "alice@example.com",
    isAdmin: false,
  },
  {
    id: 2,
    username: "Bob",
    email: "bob@example.com",
    isAdmin: true,
  },
  {
    id: 3,
    username: "Charlie",
    email: "charlie@example.com",
    isAdmin: false,
  },
  {
    id: 4,
    username: "Diana",
    email: "diana@example.com",
    isAdmin: true,
  },
  {
    id: 5,
    username: "Evan",
    email: "evan@example.com",
    isAdmin: false,
  },
  {
    id: 6,
    username: "Fiona",
    email: "fiona@example.com",
    isAdmin: true,
  },
  {
    id: 7,
    username: "George",
    email: "george@example.com",
    isAdmin: false,
  },
  {
    id: 8,
    username: "Hannah",
    email: "hannah@example.com",
    isAdmin: true,
  },
  {
    id: 9,
    username: "Ian",
    email: "ian@example.com",
    isAdmin: false,
  },
  {
    id: 10,
    username: "Jenna",
    email: "jenna@example.com",
    isAdmin: true,
  },
];

const fetchUserDataExampleTS = (userId: number): Promise<IUser> => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const user = mockUserListExampleTS.find((user) => user.id === userId);
      if (user) {
        resolve(user);
      } else {
        reject(new Error("User not found"));
      }
    }, 1000);
  });
};

fetchUserDataExampleTS(1)
  .then((user: IUser) => {
    console.log("User data:", user);
  })
  .catch((error: Error) => {
    console.error("Error fetching user data:", error);
  });
