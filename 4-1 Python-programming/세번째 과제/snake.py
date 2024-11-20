import pygame # 1. pygame 선언(pygame 라이브러리 설치 후 사용)
import random # 랜덤값 사용
from datetime import datetime 
from datetime import timedelta
 
pygame.init() # 2. pygame 초기화
 
# 3. pygame에 사용되는 전역변수 선언
WHITE = (255,255,255) #white, red, green 변수를 선언하여  각각 해당 색깔을 저장함
RED = (255,0,0) 
GREEN = (0,255,0) 
size = [400,400] ## size에 가로, 세로값 저장 
screen = pygame.display.set_mode(size)##화면 해상도를  size 크기로 초기화

done= False ## done에 false를 저장함. 즉, 끝나지 않음.(실행)
clock= pygame.time.Clock() ##초당 프레임 수 설정을 위한 정의 
last_moved_time = datetime.now() ## 마지막 조작시간 = 현재시간 
 
KEY_DIRECTION = {  ## 방향키 설정
    pygame.K_UP: 'N', #북
    pygame.K_DOWN: 'S', #남
    pygame.K_LEFT: 'W', #서
    pygame.K_RIGHT: 'E',#동
}
 
def draw_block(screen, color, position): ##블럭을 그리기 위해 화면, 색깔, 위치 함수선언 
    block = pygame.Rect((position[1] * 20, position[0] * 20),
                        (20, 20)) ##블록 크기를  20픽셀로  설정
    pygame.draw.rect(screen, color, block) #화면에 사각형을 그려주는 메소드
 
class Snake:  ##뱀 클래스
    def __init__(self):#초기화 메소드 사용
        self.positions = [(0,2),(0,1),(0,0)]  # 뱀의 위치
        self.direction = ''#뱀의 초기 방향은 따로 지정되지 않음
 
    def draw(self): #뱀 그리기
        for position in self.positions: 
            draw_block(screen, GREEN, position) #for문으로 반복하여 뱀 블록들을 그린다.
 
    def move(self): #뱀의 움직임
        head_position = self.positions[0] #뱀머리는 positions[0]에 위치함
        y, x = head_position  # y,x 변수에  뱀머리에 대한 좌표 입력
        if self.direction == 'N': #방향키가 북쪽으로 향한다면 
            self.positions = [(y - 1, x)] + self.positions[:-1] #뱀의 좌표값이 변경되며 이동됨
        elif self.direction == 'S':#방향키가 남쪽으로 향한다면 
            self.positions = [(y + 1, x)] + self.positions[:-1] #뱀의 좌표값이 변경되며 이동됨
        elif self.direction == 'W':#방향키가 서쪽으로 향한다면
            self.positions = [(y, x - 1)] + self.positions[:-1] #뱀의 좌표값이 변경되며 이동됨
        elif self.direction == 'E':#방향키가 동쪽으로 향한다면
            self.positions = [(y, x + 1)] + self.positions[:-1] #뱀의 좌표값이 변경되며 이동됨
 
    def grow(self): #뱀 늘어나기
        tail_position = self.positions[-1] #뱀꼬리 뒤에 한칸을 추가해준다.
        y, x = tail_position # y,x 변수에  뱀꼬리에 대한 좌표 입력
        #뱀머리를 따라  특정 방향키가 눌리면 좌표값이 변경되며 함께  움직이게 된다. 
        if self.direction == 'N':
            self.positions.append((y - 1, x))
        elif self.direction == 'S':
            self.positions.append((y + 1, x))
        elif self.direction == 'W':
            self.positions.append((y, x - 1))
        elif self.direction == 'C':
            self.positions.append((y, x + 1))    
 
 
class Apple:  ##사과 클래스
    def __init__(self, position=(5, 5)):#초기화 메소드 사용, 사과위치 지정
        self.position = position 
 
    def draw(self): #사과 그리기
        draw_block(screen, RED, self.position)
 
# 4. pygame 무한루프
def runGame():
    global done, last_moved_time
    #게임 시작 시, 뱀과 사과를 초기화
    snake = Snake() #뱀에 대한 객체 생성
    apple = Apple() #사과에 대한 객체 생성
 
    while not done: #while문으로 done(끝남)이 아니라면 실행됨
        clock.tick(10) #초당 프레임 수 지정
        screen.fill(WHITE)  #화면을 흰색으로 채움
 
        for event in pygame.event.get(): #키보드의 입력값(event)를 확인
            if event.type == pygame.QUIT: #만약 창을 닫히는 이벤트가 발생하였다면
                done=True #done을 True로 하여 프로그램을 종료함
            if event.type == pygame.KEYDOWN: #키보드가 눌려졌는지 확인
                if event.key in KEY_DIRECTION: 
                    snake.direction = KEY_DIRECTION[event.key] #뱀의 위치 좌표가 방향키의 명령값에 따라 바뀜
 
        if timedelta(seconds=0.1) <= datetime.now() - last_moved_time: #키보드를 멈춘지 0.1초 이상이 지났을 때 
            snake.move() #뱀의 움직임에 대한 함수 실행
            last_moved_time = datetime.now() #마지막 실행시간이 현재시간으로 갱신됨
 
        if snake.positions[0] == apple.position: #뱀의 위치와 사과의 위치가 같을때 (뱀이 사과를 먹으면)
            snake.grow() #뱀 늘어나기 함수 실행 
            apple.position = (random.randint(0, 19), random.randint(0, 19)) #사과는 랜덤하게 다시 생성됨
        
        if snake.positions[0] in snake.positions[1:]: #뱀의 머리와 꼬리가 충돌하는 경우
            done = True #프로그램을 종료함
 
 
        snake.draw() #뱀그리기 객체
        apple.draw() #사과그리기 객체
        pygame.display.update()
 
runGame()
pygame.quit()
