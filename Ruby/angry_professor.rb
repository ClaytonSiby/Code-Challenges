def angryProfessor(numOfRequiredStudents, timeEntries)
    timeEntries.count { | el | el <= 0 } >= numOfRequiredStudents ? 'NO' : 'YES'
end

print angryProfessor(3, [2, 1, 0, 1, 2]);
