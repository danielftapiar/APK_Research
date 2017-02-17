.class public Lnet/wigle/wigleandroid/ZoomButtonsController;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;
    }
.end annotation


# static fields
.field private static LISTENER_CLASS:Ljava/lang/Class;

.field private static ZOOM_CLASS:Ljava/lang/Class;

.field private static isVisible:Ljava/lang/reflect/Method;

.field private static final logger:Lorg/slf4j/Logger;

.field private static onTouch:Ljava/lang/reflect/Method;

.field private static setOnZoomListener:Ljava/lang/reflect/Method;

.field private static setVisible:Ljava/lang/reflect/Method;

.field private static setZoomInEnabled:Ljava/lang/reflect/Method;

.field private static setZoomOutEnabled:Ljava/lang/reflect/Method;


# instance fields
.field private controller:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 23
    const-class v5, Lnet/wigle/wigleandroid/ZoomButtonsController;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    .line 38
    :try_start_0
    const-string v5, "android.widget.ZoomButtonsController"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 39
    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 41
    .local v1, "clazz":Ljava/lang/Class;
    const-string v5, "OnZoomListener"

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 43
    sput-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->LISTENER_CLASS:Ljava/lang/Class;

    .line 39
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_1
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const-string v6, "setOnZoomListener"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Lnet/wigle/wigleandroid/ZoomButtonsController;->LISTENER_CLASS:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->setOnZoomListener:Ljava/lang/reflect/Method;

    .line 47
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const-string v6, "setVisible"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->setVisible:Ljava/lang/reflect/Method;

    .line 48
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const-string v6, "setZoomInEnabled"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->setZoomInEnabled:Ljava/lang/reflect/Method;

    .line 49
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const-string v6, "setZoomOutEnabled"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->setZoomOutEnabled:Ljava/lang/reflect/Method;

    .line 50
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const-string v6, "onTouch"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->onTouch:Ljava/lang/reflect/Method;

    .line 51
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const-string v6, "isVisible"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->isVisible:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 55
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v5, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no zoom buttons: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->ZOOM_CLASS:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception instantiating: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public final isVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->isVisible:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVisible exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 156
    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->onTouch:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTouch exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 145
    goto :goto_0
.end method

.method public final setOnZoomListener(Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;)V
    .locals 7
    .param p1, "listener"    # Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;

    .prologue
    .line 76
    iget-object v3, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 78
    :try_start_0
    new-instance v1, Lnet/wigle/wigleandroid/ZoomButtonsController$1;

    invoke-direct {v1, p0, p1}, Lnet/wigle/wigleandroid/ZoomButtonsController$1;-><init>(Lnet/wigle/wigleandroid/ZoomButtonsController;Lnet/wigle/wigleandroid/ZoomButtonsController$OnZoomListener;)V

    .line 93
    .local v1, "handler":Ljava/lang/reflect/InvocationHandler;
    sget-object v3, Lnet/wigle/wigleandroid/ZoomButtonsController;->LISTENER_CLASS:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Lnet/wigle/wigleandroid/ZoomButtonsController;->LISTENER_CLASS:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-static {v3, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "proxy":Ljava/lang/Object;
    sget-object v3, Lnet/wigle/wigleandroid/ZoomButtonsController;->setOnZoomListener:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "handler":Ljava/lang/reflect/InvocationHandler;
    .end local v2    # "proxy":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setOnZoomListener exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 104
    iget-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->setVisible:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setVisible exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setZoomInEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->setZoomInEnabled:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setZoomInEnabled exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setZoomOutEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 126
    iget-object v1, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 128
    :try_start_0
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->setZoomOutEnabled:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/wigle/wigleandroid/ZoomButtonsController;->controller:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lnet/wigle/wigleandroid/ZoomButtonsController;->logger:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setZoomOutEnabled exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
