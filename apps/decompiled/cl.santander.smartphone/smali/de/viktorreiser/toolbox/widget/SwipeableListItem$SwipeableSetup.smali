.class public abstract Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;
.super Ljava/lang/Object;
.source "SwipeableListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/SwipeableListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SwipeableSetup"
.end annotation


# instance fields
.field protected animationSpeed:I

.field protected consumeClick:Z

.field protected consumeLongClick:Z

.field protected detachedFromList:Z

.field protected dontHideSelector:Z

.field protected lockChanges:Z

.field protected startOffset:I

.field protected stickyStart:Z

.field protected stopOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->lockChanges:Z

    .line 94
    const/16 v0, 0x32

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->startOffset:I

    .line 97
    const/16 v0, 0x64

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->stopOffset:I

    .line 100
    const/16 v0, 0x1f4

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->animationSpeed:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->stickyStart:Z

    .line 106
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->consumeClick:Z

    .line 109
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->consumeLongClick:Z

    .line 112
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->dontHideSelector:Z

    .line 115
    iput-boolean v1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->detachedFromList:Z

    .line 86
    return-void
.end method


# virtual methods
.method protected checkChangesLock()V
    .locals 3

    .prologue
    .line 236
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->lockChanges:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    const-string v2, " has been locked! Usually this happens if you already set the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v2, " setup object and try to modify it after that."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    return-void
.end method

.method public setAnimationSpeed(I)V
    .locals 0
    .param p1, "animationSpeed"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->checkChangesLock()V

    .line 210
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .end local p1    # "animationSpeed":I
    :cond_0
    iput p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->animationSpeed:I

    .line 211
    return-void
.end method

.method public setDetachFromList(Z)V
    .locals 0
    .param p1, "detach"    # Z

    .prologue
    .line 223
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->checkChangesLock()V

    .line 224
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->detachedFromList:Z

    .line 225
    return-void
.end method

.method public setHideSelectorOnStart(Z)V
    .locals 1
    .param p1, "hideSelector"    # Z

    .prologue
    .line 196
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->dontHideSelector:Z

    .line 197
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setStartOffset(I)V
    .locals 1
    .param p1, "startOffset"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->checkChangesLock()V

    .line 132
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->startOffset:I

    .line 133
    return-void
.end method

.method public setStickyStart(Z)V
    .locals 0
    .param p1, "stickyStart"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->stickyStart:Z

    .line 160
    return-void
.end method

.method public setStopOffset(I)V
    .locals 1
    .param p1, "stopOffset"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->checkChangesLock()V

    .line 149
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->stopOffset:I

    .line 150
    return-void
.end method

.method public setSwipeOnClick(Z)V
    .locals 0
    .param p1, "swipeOnClick"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->consumeClick:Z

    .line 172
    return-void
.end method

.method public setSwipeOnLongClick(Z)V
    .locals 0
    .param p1, "swipeOnLongClick"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lde/viktorreiser/toolbox/widget/SwipeableListItem$SwipeableSetup;->consumeLongClick:Z

    .line 184
    return-void
.end method
