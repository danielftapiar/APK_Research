.class Ljavax/microedition/lcdui/DateField$1;
.super Ljava/lang/Object;
.source "DateField.java"

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# instance fields
.field private final this$0:Ljavax/microedition/lcdui/DateField;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/DateField;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 10
    .param p1, "c"    # Ljavax/microedition/lcdui/Command;
    .param p2, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 53
    sget-object v2, Ljavax/microedition/lcdui/DateField;->backCommand:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_1

    .line 54
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/DateField;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v2

    iget-object v2, v2, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    iget-object v3, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    iget-object v3, v3, Ljavax/microedition/lcdui/DateField;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v2, Ljavax/microedition/lcdui/DateField;->saveCommand:Ljavax/microedition/lcdui/Command;

    if-ne p1, v2, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "from":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 58
    .local v1, "to":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 60
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    iget-object v2, v2, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    if-ne p2, v2, :cond_2

    .line 61
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    iget-object v2, v2, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/DateCanvas;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 62
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 63
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 65
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    .line 74
    :goto_1
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/DateField;->updateDateTimeString()V

    .line 75
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/DateField;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v2

    iget-object v2, v2, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    iget-object v3, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    iget-object v3, v3, Ljavax/microedition/lcdui/DateField;->owner:Ljavax/microedition/lcdui/Screen;

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    iget-object v2, v2, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TimeCanvas;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object v2, p0, Ljavax/microedition/lcdui/DateField$1;->this$0:Ljavax/microedition/lcdui/DateField;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, v2, Ljavax/microedition/lcdui/DateField;->time:Ljava/util/Date;

    goto :goto_1
.end method
