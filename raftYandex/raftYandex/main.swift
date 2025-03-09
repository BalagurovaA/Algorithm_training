import Foundation
//    высчитываю сколько дней в году
func totalDaysInYear(allDaysInMonths: [Int]) -> Int {
    var totalDaysInYear = 0
    for days in allDaysInMonths {
        totalDaysInYear += days
        }
    return totalDaysInYear
}

//высчитываю сколько прошло лет в днях от начала времен
func TotalDateYear(YearTarget: Int, totalDaysInYear: Int) -> Int {
    let eclipseDateYear = (YearTarget - 1) * totalDaysInYear
    return eclipseDateYear
}

//высчитываю сколько прошло месяцев в днях от начала времен
func TotalDateMonth(monthTarget:Int, daysInMonths:[Int]) -> Int {
    var eclipseDateMonth = 0
    for i in 0..<monthTarget-1 {
        eclipseDateMonth += daysInMonths[i]
    }
    return eclipseDateMonth
}

func my_date() {
//  считываю месяцы и дни в неделе
    let input1 = readLine()!
    let components1 = input1.split(separator: " ")
    guard components1.count == 2,
    let monthsInYear = Int(components1[0]),
    let daysInWeek = Int(components1[1])
    else {
        print("ошибка")
        return
    }
//    считываю сколько дней в каком месяце
    var daysInMonths = [Int]()
    let input2 = readLine()!
    let components2 = input2.split(separator: " ")
    guard components2.count == monthsInYear else {
        print("ошибка")
        return
    }
    
    for i in 0..<monthsInYear {
        if let daysInMonth = Int(components2[i]) {
            daysInMonths.append(daysInMonth)
        } else {
            print("ошибка")
            return
        }
    }
        
// считываю какой сегодня день
    let input3 = readLine()!
    let components3 = input3.split(separator: " ")
    guard components3.count == 4,
    let dayToday = Int(components3[0]),
    let monthToday = Int(components3[1]),
    let YearToday = Int(components3[2]),
    let WeekDayToday = Int(components3[3])
    else {
        print("ошибка")
        return
    }
// считываю день затмения
    let input4 = readLine()!
    let components4 = input4.split(separator: " ")
    guard components4.count == 3,
    let dayTarget = Int(components4[0]),
    let monthTarget = Int(components4[1]),
    let YearTarget = Int(components4[2])
    else {
        print("ошибка")
        return
    }
//    высчитываю сколько дней в году
   let totalDaysInYear = totalDaysInYear(allDaysInMonths:daysInMonths)

//высчитываю сколько прошло лет в днях от начала времен
    let eclipseDateYear = TotalDateYear(YearTarget: YearTarget, totalDaysInYear: totalDaysInYear)
    
//высчитываю сколько прошло месяцев в днях от начала времен
    let eclipseDateMonth = TotalDateMonth(monthTarget: monthTarget, daysInMonths: daysInMonths)
        
//высчитываю сколько прошло всего дней
    let TotalDaysFromEclipse = eclipseDateYear + eclipseDateMonth + dayTarget
    
    
    //высчитываю сколько прошло лет в днях от начала времен (сегодня)
    let TadayDateYear = TotalDateYear(YearTarget: YearToday, totalDaysInYear: totalDaysInYear)
    //высчитываю сколько прошло месяцев в днях от начала времен (сегодня)
    let TodayDateMonth = TotalDateMonth(monthTarget: monthToday, daysInMonths: daysInMonths)
    let TotalDaysFromToday = TadayDateYear + TodayDateMonth + dayToday
    
    let DiffEclipseToday = TotalDaysFromEclipse - TotalDaysFromToday
    
    let result = (WeekDayToday + DiffEclipseToday) % daysInWeek
    print(result)
    
}

my_date()
