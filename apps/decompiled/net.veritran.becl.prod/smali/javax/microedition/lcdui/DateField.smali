.class public Ljavax/microedition/lcdui/DateField;
.super Ljavax/microedition/lcdui/Item;
.source "DateField.java"


# static fields
.field public static final DATE:I = 0x1

.field public static final DATE_TIME:I = 0x3

.field public static final TIME:I = 0x2

.field static backCommand:Ljavax/microedition/lcdui/Command;

.field static saveCommand:Ljavax/microedition/lcdui/Command;


# instance fields
.field date:Ljava/util/Date;

.field dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

.field dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

.field dateTimeListener:Ljavax/microedition/lcdui/CommandListener;

.field label:Ljava/lang/String;

.field mode:I

.field time:Ljava/util/Date;

.field timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Save"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/microedition/lcdui/DateField;->saveCommand:Ljavax/microedition/lcdui/Command;

    .line 47
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Back"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/microedition/lcdui/DateField;->backCommand:Ljavax/microedition/lcdui/Command;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/DateField;-><init>(Ljava/lang/String;ILjava/util/TimeZone;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/TimeZone;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljavax/microedition/lcdui/DateField$1;

    invoke-direct {v0, p0}, Ljavax/microedition/lcdui/DateField$1;-><init>(Ljavax/microedition/lcdui/DateField;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTimeListener:Ljavax/microedition/lcdui/CommandListener;

    .line 89
    invoke-static {}, Lorg/microemu/device/DeviceFactory;->getDevice()Lorg/microemu/device/Device;

    move-result-object v0

    invoke-interface {v0}, Lorg/microemu/device/Device;->getUIFactory()Lorg/microemu/device/ui/UIFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/microemu/device/ui/UIFactory;->createDateFieldUI(Ljavax/microedition/lcdui/DateField;)Lorg/microemu/device/ui/DateFieldUI;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/microedition/lcdui/Item;->setUI(Lorg/microemu/device/ui/ItemUI;)V

    .line 91
    iput-object p1, p0, Ljavax/microedition/lcdui/DateField;->label:Ljava/lang/String;

    .line 93
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/DateField;->setInputMode(I)V

    .line 95
    new-instance v0, Ljavax/microedition/lcdui/DateCanvas;

    invoke-direct {v0}, Ljavax/microedition/lcdui/DateCanvas;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    .line 96
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    sget-object v1, Ljavax/microedition/lcdui/DateField;->saveCommand:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/DateCanvas;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 97
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    sget-object v1, Ljavax/microedition/lcdui/DateField;->backCommand:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/DateCanvas;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 98
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTimeListener:Ljavax/microedition/lcdui/CommandListener;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/DateCanvas;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 100
    new-instance v0, Ljavax/microedition/lcdui/TimeCanvas;

    invoke-direct {v0}, Ljavax/microedition/lcdui/TimeCanvas;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    .line 101
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    sget-object v1, Ljavax/microedition/lcdui/DateField;->saveCommand:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TimeCanvas;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 102
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    sget-object v1, Ljavax/microedition/lcdui/DateField;->backCommand:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TimeCanvas;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 103
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTimeListener:Ljavax/microedition/lcdui/CommandListener;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TimeCanvas;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 104
    return-void
.end method

.method private formatDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 229
    iget-object v4, p0, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    if-nez v4, :cond_0

    .line 230
    const-string v4, "[date]"

    .line 238
    :goto_0
    return-object v4

    .line 231
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 232
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v4, p0, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 235
    .local v1, "day":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 236
    .local v2, "month":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 238
    .local v3, "year":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private formatTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 242
    iget-object v3, p0, Ljavax/microedition/lcdui/DateField;->time:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 243
    const-string v3, "[time]"

    .line 250
    :goto_0
    return-object v3

    .line 244
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 245
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Ljavax/microedition/lcdui/DateField;->time:Ljava/util/Date;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 247
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 248
    .local v1, "hours":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 250
    .local v2, "minutes":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    const-string v3, "0"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidDateFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/DateFieldUI;

    invoke-interface {v0}, Lorg/microemu/device/ui/DateFieldUI;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    goto :goto_0
.end method

.method getHeight()I
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidDateFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getInputMode()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Ljavax/microedition/lcdui/DateField;->mode:I

    return v0
.end method

.method isFocusable()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method paint(Ljavax/microedition/lcdui/Graphics;)I
    .locals 2
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->paintContent(Ljavax/microedition/lcdui/Graphics;)V

    .line 173
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 174
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->paint(Ljavax/microedition/lcdui/Graphics;)I

    .line 175
    invoke-super {p0}, Ljavax/microedition/lcdui/Item;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    .line 178
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateField;->getHeight()I

    move-result v0

    return v0
.end method

.method select()Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->select()Z

    .line 196
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Ljavax/microedition/lcdui/DateField;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    iget-object v2, p0, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/DateCanvas;->setTime(Ljava/util/Date;)V

    .line 202
    :goto_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateField;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v1

    iget-object v1, v1, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    iget-object v2, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 219
    :goto_1
    return v3

    .line 200
    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateCanvas:Ljavax/microedition/lcdui/DateCanvas;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/DateCanvas;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->time:Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    iget-object v2, p0, Ljavax/microedition/lcdui/DateField;->time:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/TimeCanvas;->setTime(Ljava/util/Date;)V

    .line 216
    :goto_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateField;->getOwner()Ljavax/microedition/lcdui/Screen;

    move-result-object v1

    iget-object v1, v1, Ljavax/microedition/lcdui/Screen;->currentDisplay:Ljavax/microedition/lcdui/Display;

    iget-object v2, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    goto :goto_1

    .line 207
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 208
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0x7b2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 214
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->timeCanvas:Ljavax/microedition/lcdui/TimeCanvas;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/TimeCanvas;->setTime(Ljava/util/Date;)V

    goto :goto_2
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 117
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidDateFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/DateFieldUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/DateFieldUI;->setDate(Ljava/util/Date;)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Ljavax/microedition/lcdui/DateField;->date:Ljava/util/Date;

    .line 122
    invoke-virtual {p0}, Ljavax/microedition/lcdui/DateField;->updateDateTimeString()V

    goto :goto_0
.end method

.method setFocus(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 183
    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setFocus(Z)V

    .line 185
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidDateFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/ChoiceGroup;->setFocus(Z)V

    goto :goto_0
.end method

.method public setInputMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 134
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v3, :cond_1

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 138
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/DateField;->mode:I

    .line 140
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.microemu.android.device.ui.AndroidDateFieldUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->ui:Lorg/microemu/device/ui/ItemUI;

    check-cast v0, Lorg/microemu/device/ui/DateFieldUI;

    invoke-interface {v0, p1}, Lorg/microemu/device/ui/DateFieldUI;->setInputMode(I)V

    .line 151
    :cond_2
    :goto_0
    return-void

    .line 143
    :cond_3
    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->label:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    .line 144
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v1, "[date]"

    invoke-virtual {v0, v1, v4}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 147
    :cond_4
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v1, "[time]"

    invoke-virtual {v0, v1, v4}, Ljavax/microedition/lcdui/ChoiceGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_0
.end method

.method traverse(IIIZ)I
    .locals 1
    .param p1, "gameKeyCode"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "action"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/ChoiceGroup;->traverse(IIIZ)I

    move-result v0

    return v0
.end method

.method updateDateTimeString()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 255
    iget v1, p0, Ljavax/microedition/lcdui/DateField;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-direct {p0}, Ljavax/microedition/lcdui/DateField;->formatDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 258
    :cond_0
    iget v1, p0, Ljavax/microedition/lcdui/DateField;->mode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Ljavax/microedition/lcdui/DateField;->dateTime:Ljavax/microedition/lcdui/ChoiceGroup;

    iget v2, p0, Ljavax/microedition/lcdui/DateField;->mode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0}, Ljavax/microedition/lcdui/DateField;->formatTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    .line 261
    :cond_2
    return-void
.end method
