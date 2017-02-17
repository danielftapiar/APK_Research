.class public Lorg/microemu/MIDletBridge;
.super Ljava/lang/Object;
.source "MIDletBridge.java"


# static fields
.field static currentMIDlet:Ljavax/microedition/midlet/MIDlet;

.field static emulator:Lorg/microemu/MicroEmulator;

.field static gameCanvasAccesses:Ljava/util/Map;

.field static midletContexts:Ljava/util/Map;

.field static threadMIDletContexts:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/microemu/MIDletBridge;->threadMIDletContexts:Ljava/lang/ThreadLocal;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    .line 55
    sput-object v1, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    .line 57
    sput-object v1, Lorg/microemu/MIDletBridge;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    .line 184
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/microemu/MIDletBridge;->gameCanvasAccesses:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v0, p0}, Lorg/microemu/MicroEmulator;->checkPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static clear()V
    .locals 6

    .prologue
    .line 168
    const/4 v3, 0x0

    sput-object v3, Lorg/microemu/MIDletBridge;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    .line 171
    sget-object v3, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/microemu/MIDletContext;

    invoke-virtual {v3}, Lorg/microemu/MIDletContext;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v2

    .line 174
    .local v2, "test":Ljavax/microedition/midlet/MIDlet;
    instance-of v3, v2, Lorg/microemu/app/launcher/Launcher;

    if-eqz v3, :cond_0

    .line 175
    sget-object v3, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 176
    sget-object v3, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "test":Ljavax/microedition/midlet/MIDlet;
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v3, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public static destroyMIDletContext(Lorg/microemu/MIDletContext;)V
    .locals 4
    .param p0, "midletContext"    # Lorg/microemu/MIDletContext;

    .prologue
    .line 143
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v2, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v2, p0}, Lorg/microemu/MicroEmulator;->destroyMIDletContext(Lorg/microemu/MIDletContext;)V

    .line 147
    sget-object v2, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 150
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 151
    sget-object v2, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v0, p0}, Lorg/microemu/MicroEmulator;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lorg/microemu/MIDletBridge;->getMIDletContext()Lorg/microemu/MIDletContext;

    move-result-object v0

    .line 104
    .local v0, "c":Lorg/microemu/MIDletContext;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 107
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/microemu/MIDletContext;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    goto :goto_0
.end method

.method public static getGameCanvasKeyAccess(Ljavax/microedition/lcdui/game/GameCanvas;)Lorg/microemu/GameCanvasKeyAccess;
    .locals 1
    .param p0, "gameCanvas"    # Ljavax/microedition/lcdui/game/GameCanvas;

    .prologue
    .line 187
    sget-object v0, Lorg/microemu/MIDletBridge;->gameCanvasAccesses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/microemu/GameCanvasKeyAccess;

    return-object v0
.end method

.method public static getMIDletAccess()Lorg/microemu/MIDletAccess;
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lorg/microemu/MIDletBridge;->getMIDletContext()Lorg/microemu/MIDletContext;

    move-result-object v0

    .line 112
    .local v0, "c":Lorg/microemu/MIDletContext;
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/microemu/MIDletContext;->getMIDletAccess()Lorg/microemu/MIDletAccess;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMIDletAccess(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletAccess;
    .locals 1
    .param p0, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 119
    invoke-static {p0}, Lorg/microemu/MIDletBridge;->getMIDletContext(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/microemu/MIDletContext;->getMIDletAccess()Lorg/microemu/MIDletAccess;

    move-result-object v0

    return-object v0
.end method

.method public static getMIDletContext()Lorg/microemu/MIDletContext;
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lorg/microemu/MIDletBridge;->threadMIDletContexts:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/microemu/MIDletContext;

    .line 92
    .local v0, "c":Lorg/microemu/MIDletContext;
    if-eqz v0, :cond_0

    .line 95
    .end local v0    # "c":Lorg/microemu/MIDletContext;
    :goto_0
    return-object v0

    .restart local v0    # "c":Lorg/microemu/MIDletContext;
    :cond_0
    sget-object v1, Lorg/microemu/MIDletBridge;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    invoke-static {v1}, Lorg/microemu/MIDletBridge;->getMIDletContext(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletContext;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMIDletContext(Ljavax/microedition/midlet/MIDlet;)Lorg/microemu/MIDletContext;
    .locals 1
    .param p0, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 87
    sget-object v0, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/microemu/MIDletContext;

    return-object v0
.end method

.method public static getMicroEmulator()Lorg/microemu/MicroEmulator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    return-object v0
.end method

.method public static getRecordStoreManager()Lorg/microemu/RecordStoreManager;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v0}, Lorg/microemu/MicroEmulator;->getRecordStoreManager()Lorg/microemu/RecordStoreManager;

    move-result-object v0

    return-object v0
.end method

.method public static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "origClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v0, p1}, Lorg/microemu/MicroEmulator;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static notifyDestroyed()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lorg/microemu/MIDletBridge;->getMIDletContext()Lorg/microemu/MIDletContext;

    move-result-object v0

    .line 138
    .local v0, "midletContext":Lorg/microemu/MIDletContext;
    sget-object v1, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v1, v0}, Lorg/microemu/MicroEmulator;->notifyDestroyed(Lorg/microemu/MIDletContext;)V

    .line 139
    invoke-static {v0}, Lorg/microemu/MIDletBridge;->destroyMIDletContext(Lorg/microemu/MIDletContext;)V

    .line 140
    return-void
.end method

.method public static platformRequest(Ljava/lang/String;)Z
    .locals 1
    .param p0, "URL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    invoke-interface {v0, p0}, Lorg/microemu/MicroEmulator;->platformRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static registerGameCanvasKeyAccess(Ljavax/microedition/lcdui/game/GameCanvas;Lorg/microemu/GameCanvasKeyAccess;)V
    .locals 1
    .param p0, "gameCanvas"    # Ljavax/microedition/lcdui/game/GameCanvas;
    .param p1, "access"    # Lorg/microemu/GameCanvasKeyAccess;

    .prologue
    .line 191
    sget-object v0, Lorg/microemu/MIDletBridge;->gameCanvasAccesses:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public static registerMIDletAccess(Lorg/microemu/MIDletAccess;)V
    .locals 2
    .param p0, "accessor"    # Lorg/microemu/MIDletAccess;

    .prologue
    .line 72
    sget-object v1, Lorg/microemu/MIDletBridge;->threadMIDletContexts:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/microemu/MIDletContext;

    .line 73
    .local v0, "c":Lorg/microemu/MIDletContext;
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lorg/microemu/MIDletContext;

    .end local v0    # "c":Lorg/microemu/MIDletContext;
    invoke-direct {v0}, Lorg/microemu/MIDletContext;-><init>()V

    .line 76
    .restart local v0    # "c":Lorg/microemu/MIDletContext;
    invoke-static {v0}, Lorg/microemu/MIDletBridge;->setThreadMIDletContext(Lorg/microemu/MIDletContext;)V

    .line 78
    :cond_0
    invoke-virtual {v0, p0}, Lorg/microemu/MIDletContext;->setMIDletAccess(Lorg/microemu/MIDletAccess;)V

    .line 79
    invoke-static {v0}, Lorg/microemu/MIDletBridge;->registerMIDletContext(Lorg/microemu/MIDletContext;)V

    .line 80
    return-void
.end method

.method public static registerMIDletContext(Lorg/microemu/MIDletContext;)V
    .locals 2
    .param p0, "midletContext"    # Lorg/microemu/MIDletContext;

    .prologue
    .line 83
    sget-object v0, Lorg/microemu/MIDletBridge;->midletContexts:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/microemu/MIDletContext;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public static setCurrentMIDlet(Ljavax/microedition/midlet/MIDlet;)V
    .locals 0
    .param p0, "midlet"    # Ljavax/microedition/midlet/MIDlet;

    .prologue
    .line 99
    sput-object p0, Lorg/microemu/MIDletBridge;->currentMIDlet:Ljavax/microedition/midlet/MIDlet;

    .line 100
    return-void
.end method

.method public static setMicroEmulator(Lorg/microemu/MicroEmulator;)V
    .locals 0
    .param p0, "emulator"    # Lorg/microemu/MicroEmulator;

    .prologue
    .line 60
    sput-object p0, Lorg/microemu/MIDletBridge;->emulator:Lorg/microemu/MicroEmulator;

    .line 61
    return-void
.end method

.method public static setThreadMIDletContext(Lorg/microemu/MIDletContext;)V
    .locals 1
    .param p0, "midletContext"    # Lorg/microemu/MIDletContext;

    .prologue
    .line 68
    sget-object v0, Lorg/microemu/MIDletBridge;->threadMIDletContexts:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
