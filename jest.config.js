module.exports = {
  moduleNameMapper: {
    '^.+\\.(css|scss)$': 'identity-obj-proxy'
  },
  roots: ['app/javascript/__tests__/'],
  setupFiles: ['<rootDir>/app/javascript/__tests__/setup.js'],
  snapshotSerializers: [],
  testPathIgnorePatterns: ['app/javascript/__tests__/setup.js'],
  unmockedModulePathPatterns: [],
};
