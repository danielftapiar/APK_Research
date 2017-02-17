.class public Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;
.super Ljava/lang/Object;
.source "VTLogicalContainerViewOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static CONS_ONCLICK_THRESHOLD:F


# instance fields
.field private currentX:F

.field private currentY:F

.field private initTouchX:F

.field private initTouchY:F

.field private initX:F

.field private initY:F

.field private maxMovementX:I

.field private maxMovementY:I

.field private minMovementX:I

.field private minMovementY:I

.field private performViewOnClick:Z

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->CONS_ONCLICK_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->performViewOnClick:Z

    .line 25
    iput-object p1, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 167
    const/4 v10, 0x0

    :goto_0
    return v10

    .line 49
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iput v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initTouchX:F

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iput v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initTouchY:F

    .line 52
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    invoke-static {v10}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v10

    iput v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->currentX:F

    .line 53
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    invoke-static {v10}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v10

    iput v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->currentY:F

    .line 55
    const/4 v10, 0x1

    iput-boolean v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->performViewOnClick:Z

    .line 57
    const/4 v10, 0x1

    goto :goto_0

    .line 63
    :pswitch_1
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->currentX:F

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initX:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initTouchX:F

    sub-float v4, v10, v11

    .line 64
    .local v4, "deltaX":F
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->currentY:F

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initY:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initTouchY:F

    sub-float v5, v10, v11

    .line 68
    .local v5, "deltaY":F
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_5

    .line 70
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    int-to-float v4, v10

    .line 77
    :cond_0
    :goto_1
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_6

    .line 79
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    int-to-float v5, v10

    .line 86
    :cond_1
    :goto_2
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initX:F

    add-float/2addr v11, v4

    invoke-static {v10, v11}, Lcom/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 87
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initY:F

    add-float/2addr v11, v5

    invoke-static {v10, v11}, Lcom/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 89
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    sub-int/2addr v10, v11

    int-to-float v8, v10

    .line 90
    .local v8, "totalMovementX":F
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 91
    .local v9, "totalMovementY":F
    sget v10, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->CONS_ONCLICK_THRESHOLD:F

    mul-float v6, v8, v10

    .line 92
    .local v6, "onCLickThresholdX":F
    sget v10, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->CONS_ONCLICK_THRESHOLD:F

    mul-float v7, v9, v10

    .line 94
    .local v7, "onCLickThresholdY":F
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    int-to-float v10, v10

    add-float/2addr v10, v6

    cmpl-float v10, v4, v10

    if-lez v10, :cond_2

    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    int-to-float v10, v10

    sub-float/2addr v10, v6

    cmpg-float v10, v4, v10

    if-ltz v10, :cond_3

    :cond_2
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    cmpl-float v10, v5, v10

    if-lez v10, :cond_4

    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    int-to-float v10, v10

    sub-float/2addr v10, v7

    cmpg-float v10, v5, v10

    if-gez v10, :cond_4

    .line 97
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->performViewOnClick:Z

    .line 100
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 72
    .end local v6    # "onCLickThresholdX":F
    .end local v7    # "onCLickThresholdY":F
    .end local v8    # "totalMovementX":F
    .end local v9    # "totalMovementY":F
    :cond_5
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_0

    .line 74
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    int-to-float v4, v10

    goto :goto_1

    .line 81
    :cond_6
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_1

    .line 83
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    int-to-float v5, v10

    goto :goto_2

    .line 105
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    :pswitch_2
    iget-boolean v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->performViewOnClick:Z

    if-eqz v10, :cond_7

    .line 107
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->performClick()Z

    move-result v10

    goto/16 :goto_0

    .line 111
    :cond_7
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->currentX:F

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initX:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initTouchX:F

    sub-float v4, v10, v11

    .line 112
    .restart local v4    # "deltaX":F
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->currentY:F

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initY:F

    sub-float/2addr v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initTouchY:F

    sub-float v5, v10, v11

    .line 115
    .restart local v5    # "deltaY":F
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_c

    .line 116
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    int-to-float v4, v10

    .line 121
    :cond_8
    :goto_3
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_d

    .line 122
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    int-to-float v5, v10

    .line 127
    :cond_9
    :goto_4
    const/4 v2, 0x0

    .line 128
    .local v2, "deltaFinalPositionX":F
    const/4 v3, 0x0

    .line 130
    .local v3, "deltaFinalPositionY":F
    const/4 v10, 0x0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_e

    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gez v10, :cond_e

    .line 131
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    int-to-float v2, v10

    .line 136
    :cond_a
    :goto_5
    const/4 v10, 0x0

    cmpg-float v10, v5, v10

    if-gez v10, :cond_f

    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v5, v10

    if-gez v10, :cond_f

    .line 137
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    int-to-float v3, v10

    .line 142
    :cond_b
    :goto_6
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    const-string v11, "x"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initX:F

    add-float/2addr v14, v2

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 143
    .local v0, "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    const-string v11, "y"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initY:F

    add-float/2addr v14, v3

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 145
    .local v1, "animY":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 146
    const-wide/16 v10, 0x12c

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 152
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 117
    .end local v0    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    .end local v1    # "animY":Lcom/nineoldandroids/animation/ObjectAnimator;
    .end local v2    # "deltaFinalPositionX":F
    .end local v3    # "deltaFinalPositionY":F
    :cond_c
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_8

    .line 118
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    int-to-float v4, v10

    goto :goto_3

    .line 123
    :cond_d
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_9

    .line 124
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    int-to-float v5, v10

    goto :goto_4

    .line 132
    .restart local v2    # "deltaFinalPositionX":F
    .restart local v3    # "deltaFinalPositionY":F
    :cond_e
    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-lez v10, :cond_a

    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_a

    .line 133
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    int-to-float v2, v10

    goto :goto_5

    .line 138
    :cond_f
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_b

    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_b

    .line 139
    iget v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    int-to-float v3, v10

    goto :goto_6

    .line 158
    .end local v2    # "deltaFinalPositionX":F
    .end local v3    # "deltaFinalPositionY":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    :pswitch_3
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    const-string v11, "x"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initX:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 159
    .restart local v0    # "animX":Lcom/nineoldandroids/animation/ObjectAnimator;
    iget-object v10, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    const-string v11, "y"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    iget v14, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initY:F

    aput v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 161
    .restart local v1    # "animY":Lcom/nineoldandroids/animation/ObjectAnimator;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 162
    const-wide/16 v10, 0x12c

    invoke-virtual {v1, v10, v11}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 164
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setMovements(IIII)V
    .locals 1
    .param p1, "minX"    # I
    .param p2, "maxX"    # I
    .param p3, "minY"    # I
    .param p4, "maxY"    # I

    .prologue
    .line 33
    iput p1, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementX:I

    .line 34
    iput p2, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementX:I

    .line 35
    iput p3, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->minMovementY:I

    .line 36
    iput p4, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->maxMovementY:I

    .line 38
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initX:F

    .line 39
    iget-object v0, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTLogicalContainerViewOnTouchListener;->initY:F

    .line 40
    return-void
.end method
