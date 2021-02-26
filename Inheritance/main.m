//
//  main.m
//  Inheritance
//
//  Created by Оля Качинская on 25.02.2021.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Bicycle.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Schoolchild.h"
#import "Animals.h"
#import "Lion.h"
#import "Carp.h"
#import "Rabbit.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Human *human = [[Human alloc] init];
        Bicycle *bicycle = [[Bicycle alloc] init];
        Runner *runner = [[Runner alloc] init];
        Swimmer *swimmer = [[Swimmer alloc] init];
        Schoolchild *schoolchild = [[Schoolchild alloc] init];
        
        Animals *animal = [[Animals alloc] init];
        Lion *lion = [[Lion alloc] init];
        Carp *carp = [[Carp alloc] init];
        Rabbit *rabbit = [[Rabbit alloc] init];
        
        [human SetUpProperties:@"Gosha" :180.0 :78.6 :@"man"];
        [bicycle SetUpProperties:@"Valera" :173.0 :71.0 :@"man"];
        [swimmer SetUpProperties:@"Zhenya" :170.0 :60.8 :@"female"];
        [runner SetUpProperties:@"Lyuba" :167.0 :51.3 :@"female"];
        [schoolchild SetUpProperties:@"Sasha" :152.4 :37.9 :@"female"];
        [schoolchild setFavSubject:@"Math"];
        [schoolchild setAverageScore:4.2];
    
        
        [animal SetUpProperties:@"Hedgehog" :@"grey" :1.2];
        [lion SetUpProperties:@"Lion" :@"orange" :6.0];
        [carp SetUpProperties:@"Carp" :@"blue" :0.8];
        [rabbit SetUpProperties:@"Rabbit" :@"white" :2.4];
        
//        NSArray *array = [NSArray arrayWithObjects:human,bicycle,runner, swimmer,schoolchild,
//                          animal, lion, carp, rabbit, nil];
//
//        //обратный массив
//        NSArray *reversdArray = [[array reverseObjectEnumerator] allObjects];
//
//        // вывод типа объекта и его свойства с методом
          //задание мастер
//        for (Human *people in reversdArray)
//        {
//            NSLog(@"%@",people);
//            if ([people isKindOfClass:[Animals class]])
//            {
//                Animals *ani = (Animals *)people;
//                [ani DisplayPropertiesOfAnimal];
//                continue;
//            }
//
//            [people DisplayProperties];
//        }
       
//        //люди и животные в разных массивах. Вывод в цикле людей, а затем животных.
//        //задание звезда
//
//        NSArray *peopleArray = [NSArray arrayWithObjects:
//                                human, bicycle, runner, swimmer, schoolchild, nil];
//        NSArray *animalArray = [NSArray arrayWithObjects:
//                                animal, lion, carp, rabbit, nil];
//
//        unsigned int countArrays = MAX([peopleArray count],
//                                       [animalArray count]);
//
//        for ( int i = 0; i < countArrays; i++)
//        {
//            if (i < [peopleArray count])
//            {
//                NSLog(@"Human: %@", [peopleArray objectAtIndex:i]);
//                Human *a = [peopleArray objectAtIndex:i];
//                [a DisplayProperties];
//            }
//            else
//                continue;
//
//            if (i < [animalArray count])
//            {
//                NSLog(@"Animals: %@", [animalArray objectAtIndex:i]);
//                Animals *b = [animalArray objectAtIndex:i];
//                [b DisplayPropertiesOfAnimal];
//            }
//            else
//                continue;
//        }
        
        //создание общего массива
        //супермен
        NSArray *unsortedArray = [NSArray arrayWithObjects:
                                  human, bicycle, runner, swimmer, schoolchild,
                                  animal, lion, carp, rabbit, nil];
    
        NSMutableArray *people = [NSMutableArray array];
        NSMutableArray *beast = [NSMutableArray array];
        
        //разделение на два массива
        for (int i = 0; i < [unsortedArray count]; i++)
        {
            if ([[unsortedArray objectAtIndex:i] isKindOfClass:[Human class]])
                [people addObject:[unsortedArray objectAtIndex:i]];
            
            if ([[unsortedArray objectAtIndex:i] isKindOfClass:[Animals class]])
                [beast addObject:[unsortedArray objectAtIndex:i]];
        }
        
        //сортировка по именам и по видам животных
        NSSortDescriptor *nameOfHuman = [NSSortDescriptor sortDescriptorWithKey:@"Name" ascending:YES];
        [people sortUsingDescriptors:[NSArray arrayWithObject:nameOfHuman]];
        
        NSSortDescriptor *kindOfBeast = [NSSortDescriptor sortDescriptorWithKey:@"KindOfAnimal" ascending:YES];
        [beast sortUsingDescriptors:[NSArray arrayWithObject:kindOfBeast]];
        
        //создание отсортированного массива
       __unused NSArray *sortedArray = [NSArray arrayWithObjects:people,beast, nil];
    }
    return 0;
}
