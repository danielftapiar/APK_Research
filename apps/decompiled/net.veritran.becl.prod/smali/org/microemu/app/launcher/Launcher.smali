.class public Lorg/microemu/app/launcher/Launcher;
.super Ljavax/microedition/midlet/MIDlet;
.source "Launcher.java"

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;


# static fields
.field protected static final CMD_LAUNCH:Ljavax/microedition/lcdui/Command;

.field protected static final NOMIDLETS:Ljava/lang/String; = "[no midlets]"

.field protected static midletEntries:Ljava/util/Vector;

.field protected static midletSuiteName:Ljava/lang/String;


# instance fields
.field protected common:Lorg/microemu/app/CommonInterface;

.field protected currentMIDlet:Ljavax/microedition/midlet/MIDlet;

.field protected menuList:Ljavax/microedition/lcdui/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "Start"

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/microemu/app/launcher/Launcher;->CMD_LAUNCH:Ljavax/microedition/lcdui/Command;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/microemu/app/launcher/Launcher;->midletSuiteName:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lorg/microemu/app/CommonInterface;)V
    .locals 1
    .param p1, "common"    # Lorg/microemu/app/CommonInterface;

    .prologue
    .line 55
    invoke-direct {p0}, Ljavax/microedition/midlet/MIDlet;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/microemu/app/launcher/Launcher;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    .line 56
    iput-object p1, p0, Lorg/microemu/app/launcher/Launcher;->common:Lorg/microemu/app/CommonInterface;

    .line 57
    return-void
.end method

.method public static addMIDletEntry(Lorg/microemu/MIDletEntry;)V
    .locals 1
    .param p0, "entry"    # Lorg/microemu/MIDletEntry;

    .prologue
    .line 68
    sget-object v0, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static removeMIDletEntries()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 73
    return-void
.end method

.method public static setSuiteName(Ljava/lang/String;)V
    .locals 0
    .param p0, "midletSuiteName"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lorg/microemu/app/launcher/Launcher;->midletSuiteName:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 3
    .param p1, "c"    # Ljavax/microedition/lcdui/Command;
    .param p2, "d"    # Ljavax/microedition/lcdui/Displayable;

    .prologue
    .line 117
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    if-ne p2, v1, :cond_1

    .line 118
    sget-object v1, Ljavax/microedition/lcdui/List;->SELECT_COMMAND:Ljavax/microedition/lcdui/Command;

    if-eq p1, v1, :cond_0

    sget-object v1, Lorg/microemu/app/launcher/Launcher;->CMD_LAUNCH:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/microemu/app/launcher/Launcher;->getSelectedMidletEntry()Lorg/microemu/MIDletEntry;

    move-result-object v0

    .line 120
    .local v0, "entry":Lorg/microemu/MIDletEntry;
    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->common:Lorg/microemu/app/CommonInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/microemu/app/CommonInterface;->initMIDlet(Z)Ljavax/microedition/midlet/MIDlet;

    .line 125
    .end local v0    # "entry":Lorg/microemu/MIDletEntry;
    :cond_1
    return-void
.end method

.method public destroyApp(Z)V
    .locals 0
    .param p1, "unconditional"    # Z

    .prologue
    .line 95
    return-void
.end method

.method public getCurrentMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/microemu/app/launcher/Launcher;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method public getSelectedMidletEntry()Lorg/microemu/MIDletEntry;
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/List;->getSelectedIndex()I

    move-result v0

    .line 78
    .local v0, "idx":I
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/List;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[no midlets]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    sget-object v1, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/microemu/MIDletEntry;

    .line 83
    .end local v0    # "idx":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuiteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/microemu/app/launcher/Launcher;->midletSuiteName:Ljava/lang/String;

    return-object v0
.end method

.method public pauseApp()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public setCurrentMIDlet(Ljavax/microedition/midlet/MIDlet;)V
    .locals 0
    .param p1, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/microemu/app/launcher/Launcher;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    .line 92
    return-void
.end method

.method public startApp()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    new-instance v1, Ljavax/microedition/lcdui/List;

    const-string v2, "Launcher"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Ljavax/microedition/lcdui/List;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    .line 102
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    sget-object v2, Lorg/microemu/app/launcher/Launcher;->CMD_LAUNCH:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/List;->addCommand(Ljavax/microedition/lcdui/Command;)V

    .line 103
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1, p0}, Ljavax/microedition/lcdui/List;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    .line 105
    sget-object v1, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    const-string v2, "[no midlets]"

    invoke-virtual {v1, v2, v4}, Ljavax/microedition/lcdui/List;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 113
    :cond_0
    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v1

    iget-object v2, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    .line 114
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v2, p0, Lorg/microemu/app/launcher/Launcher;->menuList:Ljavax/microedition/lcdui/List;

    sget-object v1, Lorg/microemu/app/launcher/Launcher;->midletEntries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/microemu/MIDletEntry;

    invoke-virtual {v1}, Lorg/microemu/MIDletEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Ljavax/microedition/lcdui/List;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
