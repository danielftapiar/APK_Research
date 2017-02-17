.class public Lnet/veritran/VTCommonActivity;
.super Lnet/veritran/VTAbstractActivity;
.source "VTCommonActivity.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/NavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/VTCommonActivity$InputsByArea;,
        Lnet/veritran/VTCommonActivity$RadioButtonOnClickListener;,
        Lnet/veritran/VTCommonActivity$VTButtonOnClickListener;,
        Lnet/veritran/VTCommonActivity$VTImplicitOnClickListener;,
        Lnet/veritran/VTCommonActivity$ImplicitOnClickListener;,
        Lnet/veritran/VTCommonActivity$Info;,
        Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;
    }
.end annotation


# static fields
.field private static final ACTION_NEXT_EXECUTION_IF_NOT_AVAILABLE_SEPARATOR:Ljava/lang/String; = "_"

.field private static final ACTION_NEXT_EXECUTION_SEPARATOR:Ljava/lang/String; = "|"

.field private static final LIST_ITEM_EXTRA:Ljava/lang/String; = "net.veritran.listItem"

.field private static final LIST_POSITION_EXTRA:Ljava/lang/String; = "net.veritran.listPosition"

.field private static final LOG_IN_ACTIVITY:I = 0x1

.field public static final PUSH_NOTIFICATION_BROADCAST_CONSTANT:Ljava/lang/String; = "__PROJECT_NAME__.PUSH_NOTIFICATION_BROADCAST_CONSTANT"

.field public static final PUSH_NOTIFICATION_REGISTER_CONSTANT:Ljava/lang/String; = "PUSH_NOTIFICATION_REGISTER_CONSTANT"

.field public static final PUSH_NOTIFICATION_REGISTER_REG_ID_CONSTANT:Ljava/lang/String; = "PUSH_NOTIFICATION_REGISTER_REG_ID_CONSTANT"

.field public static final PUSH_NOTIFICATION_REG_TYPE_CONSTANT:Ljava/lang/String; = "PUSH_NOTIFICATION_REG_TYPE_CONSTANT"

.field public static final PUSH_NOTIFICATION_REG_WAS_ERROR_CONSTANT:Ljava/lang/String; = "PUSH_NOTIFICATION_REG_WAS_ERROR_CONSTANT"

.field public static final PUSH_NOTIFICATION_UNREGISTER_CONSTANT:Ljava/lang/String; = "PUSH_NOTIFICATION_UNREGISTER_CONSTANT"

.field private static final SPLASH_PROGRESS_COMPONENT_ID:Ljava/lang/String; = "__progress"

.field private static final SPLASH_PROGRESS_IMAGE_COMPONENT_ID:Ljava/lang/String; = "__progress_image"

.field private static final SPLASH_STATUS_COMPONENT_ID:Ljava/lang/String; = "__status"

.field private static final SPLASH_VERSION_COMPONENT_ID:Ljava/lang/String; = "__version"

.field private static final TAG:Ljava/lang/String; = "VTCommonActivity"


# instance fields
.field private areaThatSetBackAction:Ljava/lang/String;

.field bDeleteConfig:Landroid/widget/Button;

.field private backAction:Ljava/lang/String;

.field private callApiListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/callapi/VTCallApiListener;",
            ">;"
        }
    .end annotation
.end field

.field private contextMenus:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentContextMenuViewLauncher:Landroid/view/View;

.field private currentPopulatingVisualArea:Ljava/lang/String;

.field private enableSecretScreen:Z

.field private exitAllowed:Z

.field private inputPattern:Ljava/lang/String;

.field public inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

.field isConfigurableSplash:Z

.field private isInitPattern:Z

.field private isMatchPattern:Z

.field listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

.field lvConfigInfo:Landroid/widget/ListView;

.field private final mHandlePushReceiver:Landroid/content/BroadcastReceiver;

.field mainVisualArea:Lnet/veritran/component/VTVisualArea;

.field final maxMemory:I

.field public openDialogs:I

.field private pattern:Ljava/lang/String;

.field private postOnActivityResult:Ljava/lang/Runnable;

.field prgProgress:Landroid/widget/ProgressBar;

.field public sessionComponents:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnet/veritran/component/VTUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field public sessionDialogs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lnet/veritran/component/VTPopupComponent;",
            ">;"
        }
    .end annotation
.end field

.field startSplashMilis:J

.field txtProgressMessage:Landroid/widget/TextView;

.field txtProgressPercentage:Landroid/widget/TextView;

.field txtVersion:Landroid/widget/TextView;

.field vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

.field private waitDialog:Landroid/app/ProgressDialog;

.field private waitDialogHandlerThread:Landroid/os/HandlerThread;

.field private waitExpired:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 178
    invoke-direct {p0}, Lnet/veritran/VTAbstractActivity;-><init>()V

    .line 196
    iput-boolean v5, p0, Lnet/veritran/VTCommonActivity;->exitAllowed:Z

    .line 198
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->areaThatSetBackAction:Ljava/lang/String;

    .line 199
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    .line 201
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    .line 212
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    .line 213
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    .line 219
    iput v5, p0, Lnet/veritran/VTCommonActivity;->openDialogs:I

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->pattern:Ljava/lang/String;

    .line 224
    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->inputPattern:Ljava/lang/String;

    .line 225
    iput-boolean v1, p0, Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z

    .line 226
    iput-boolean v1, p0, Lnet/veritran/VTCommonActivity;->isInitPattern:Z

    .line 227
    iput-boolean v5, p0, Lnet/veritran/VTCommonActivity;->isMatchPattern:Z

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->callApiListeners:Ljava/util/Vector;

    .line 262
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lnet/veritran/VTCommonActivity;->maxMemory:I

    .line 265
    new-instance v0, Lnet/veritran/VTCommonActivity$1;

    invoke-direct {v0, p0}, Lnet/veritran/VTCommonActivity$1;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->mHandlePushReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/veritran/VTCommonActivity;->startSplashMilis:J

    .line 422
    iput-boolean v5, p0, Lnet/veritran/VTCommonActivity;->isConfigurableSplash:Z

    .line 473
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    .line 474
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->txtProgressMessage:Landroid/widget/TextView;

    .line 475
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->prgProgress:Landroid/widget/ProgressBar;

    .line 476
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->txtVersion:Landroid/widget/TextView;

    .line 1719
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->postOnActivityResult:Ljava/lang/Runnable;

    .line 3182
    new-instance v0, Lnet/veritran/VTCommonActivity$InputsByArea;

    invoke-direct {v0, p0}, Lnet/veritran/VTCommonActivity$InputsByArea;-><init>(Lnet/veritran/VTCommonActivity;)V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    .line 3184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->contextMenus:Ljava/util/Hashtable;

    .line 3186
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->currentContextMenuViewLauncher:Landroid/view/View;

    .line 3230
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;

    .line 3231
    iput-boolean v5, p0, Lnet/veritran/VTCommonActivity;->waitExpired:Z

    .line 3232
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    .line 4160
    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

    return-void
.end method

.method static synthetic access$000(Lnet/veritran/VTCommonActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z

    return v0
.end method

.method static synthetic access$002(Lnet/veritran/VTCommonActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z

    return p1
.end method

.method static synthetic access$100(Lnet/veritran/VTCommonActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->isInitPattern:Z

    return v0
.end method

.method static synthetic access$1000(Lnet/veritran/VTCommonActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lnet/veritran/VTCommonActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 178
    iput-object p1, p0, Lnet/veritran/VTCommonActivity;->waitDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$102(Lnet/veritran/VTCommonActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lnet/veritran/VTCommonActivity;->isInitPattern:Z

    return p1
.end method

.method static synthetic access$1100(Lnet/veritran/VTCommonActivity;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1102(Lnet/veritran/VTCommonActivity;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 178
    iput-object p1, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$200(Lnet/veritran/VTCommonActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->isMatchPattern:Z

    return v0
.end method

.method static synthetic access$300(Lnet/veritran/VTCommonActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lnet/veritran/VTCommonActivity;->populateList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lnet/veritran/VTCommonActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->executeRetrieveFromBundle()V

    return-void
.end method

.method static synthetic access$600(Lnet/veritran/VTCommonActivity;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lnet/veritran/VTCommonActivity;->getOrientedPhoto(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lnet/veritran/VTCommonActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/VTCommonActivity;->executeOnActivityResultCallApi(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lnet/veritran/VTCommonActivity;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;

    .prologue
    .line 178
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->waitExpired:Z

    return v0
.end method

.method static synthetic access$902(Lnet/veritran/VTCommonActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTCommonActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lnet/veritran/VTCommonActivity;->waitExpired:Z

    return p1
.end method

.method private addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 3384
    .local p3, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {p3, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3389
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3390
    return-void
.end method

.method private askAndCloseApplication()V
    .locals 5

    .prologue
    .line 3961
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3963
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3965
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    const-string v3, "$string"

    const-string v4, "sys0018"

    invoke-virtual {v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3963
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3968
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3970
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    const-string v3, "$string"

    const-string v4, "appYes"

    invoke-virtual {v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3968
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/veritran/VTCommonActivity$11;

    invoke-direct {v2, p0}, Lnet/veritran/VTCommonActivity$11;-><init>(Lnet/veritran/VTCommonActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4003
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4005
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    const-string v3, "$string"

    const-string v4, "appNo"

    invoke-virtual {v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4003
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/veritran/VTCommonActivity$12;

    invoke-direct {v2, p0}, Lnet/veritran/VTCommonActivity$12;-><init>(Lnet/veritran/VTCommonActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4015
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4016
    return-void
.end method

.method private calculateNumber(FF)I
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 623
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 624
    .local v2, "display":Landroid/view/Display;
    const/4 v1, 0x3

    .line 625
    .local v1, "columns":I
    const/4 v6, 0x3

    .line 626
    .local v6, "rows":I
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    div-int/2addr v8, v1

    int-to-float v7, v8

    .line 627
    .local v7, "w":F
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v8

    div-int/2addr v8, v6

    int-to-float v4, v8

    .line 628
    .local v4, "h":F
    div-float v8, p1, v7

    float-to-int v8, v8

    add-int/lit8 v0, v8, 0x1

    .line 629
    .local v0, "colum":I
    div-float v8, p2, v4

    float-to-int v3, v8

    .line 630
    .local v3, "fila":I
    mul-int v8, v3, v1

    add-int v5, v8, v0

    .line 631
    .local v5, "number":I
    return v5
.end method

.method private disableMainView()V
    .locals 2

    .prologue
    .line 1723
    const-string v0, "VTCommonActivity"

    const-string v1, "disableMainView"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    new-instance v0, Lnet/veritran/VTCommonActivity$6;

    invoke-direct {v0, p0}, Lnet/veritran/VTCommonActivity$6;-><init>(Lnet/veritran/VTCommonActivity;)V

    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1738
    return-void
.end method

.method private enableMainView()V
    .locals 2

    .prologue
    .line 1742
    const-string v0, "VTCommonActivity"

    const-string v1, "enableMainView"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    new-instance v0, Lnet/veritran/VTCommonActivity$7;

    invoke-direct {v0, p0}, Lnet/veritran/VTCommonActivity$7;-><init>(Lnet/veritran/VTCommonActivity;)V

    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1753
    return-void
.end method

.method private executeOnActivityResultCallApi(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "d"    # Landroid/content/Intent;

    .prologue
    .line 256
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->callApiListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/callapi/VTCallApiListener;

    .line 258
    .local v0, "callapiListener":Lnet/veritran/callapi/VTCallApiListener;
    invoke-interface {v0, p1, p2, p3}, Lnet/veritran/callapi/VTCallApiListener;->onActivityResult(IILjava/lang/Object;)V

    goto :goto_0

    .line 260
    .end local v0    # "callapiListener":Lnet/veritran/callapi/VTCallApiListener;
    :cond_0
    return-void
.end method

.method private executeRetrieveFromBundle()V
    .locals 3

    .prologue
    .line 3036
    invoke-static {p0}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->getInstance(Landroid/app/Activity;)Lnet/veritran/android/implementation/nfc/NfcLibrary;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/veritran/android/implementation/nfc/NfcLibrary;->tryReceiveNFC(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3040
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 3042
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lnet/veritran/VTCommonActivity;->retrieveFromBundle(Landroid/os/Bundle;)V

    .line 3044
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 482
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 481
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 483
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "VTCommonActivity"

    const-string v5, "Catched exception empty (fortify)"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const-string v4, ""

    goto :goto_0

    .line 486
    :catch_1
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "VTCommonActivity"

    const-string v5, "Catched exception empty (fortify)"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getOrientedPhoto(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 18
    .param p1, "imagePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1691
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1692
    .local v11, "bounds":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1693
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1695
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1696
    .local v13, "opts":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1698
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v12, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    invoke-virtual {v12, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1700
    .local v14, "orientString":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1702
    .local v15, "orientation":I
    :goto_0
    const/16 v17, 0x0

    .line 1703
    .local v17, "rotationAngle":I
    const/4 v2, 0x6

    if-ne v15, v2, :cond_0

    const/16 v17, 0x5a

    .line 1704
    :cond_0
    const/4 v2, 0x3

    if-ne v15, v2, :cond_1

    const/16 v17, 0xb4

    .line 1705
    :cond_1
    const/16 v2, 0x8

    if-ne v15, v2, :cond_2

    const/16 v17, 0x10e

    .line 1707
    :cond_2
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1708
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1709
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 1711
    .local v16, "rotatedBitmap":Landroid/graphics/Bitmap;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1712
    .local v10, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1713
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 1714
    .local v9, "bitmapData":[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1716
    .local v8, "bis":Ljava/io/ByteArrayInputStream;
    return-object v8

    .line 1700
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "bitmapData":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "orientation":I
    .end local v16    # "rotatedBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "rotationAngle":I
    :cond_3
    const/4 v15, 0x1

    goto :goto_0
.end method

.method private getUIComponent2(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;
    .locals 29
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p2, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .param p3, "parent"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 1118
    const-string v26, "VTCommonActivity"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Looking for: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v26, "cssclass"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "cssClass":Ljava/lang/String;
    const-string v26, "VTCommonActivity"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "cssClass: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v26, "VTCommonActivity"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "parsed: cssClass: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-static/range {p1 .. p2}, Lnet/veritran/ThemeManager;->applyTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1126
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTTEXT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 1127
    new-instance v24, Lnet/veritran/component/VTText;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTText;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1128
    .local v24, "vtText":Lnet/veritran/component/VTText;
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTText;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1129
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTText;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1130
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTText;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTText;->setVisualAreaName(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {v24 .. v24}, Lnet/veritran/component/VTText;->init()V

    move-object/from16 v13, v24

    .line 1320
    .end local v24    # "vtText":Lnet/veritran/component/VTText;
    :goto_0
    return-object v13

    .line 1134
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTIMAGE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 1135
    new-instance v12, Lnet/veritran/component/VTImage;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lnet/veritran/component/VTImage;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1136
    .local v12, "vtImage":Lnet/veritran/component/VTImage;
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lnet/veritran/component/VTImage;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1137
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lnet/veritran/component/VTImage;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1138
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lnet/veritran/component/VTImage;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lnet/veritran/component/VTImage;->setVisualAreaName(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {v12}, Lnet/veritran/component/VTImage;->init()V

    move-object v13, v12

    .line 1141
    goto :goto_0

    .line 1142
    .end local v12    # "vtImage":Lnet/veritran/component/VTImage;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTBUTTON"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 1143
    new-instance v6, Lnet/veritran/component/VTButton;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lnet/veritran/component/VTButton;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1144
    .local v6, "vtButton":Lnet/veritran/component/VTButton;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lnet/veritran/component/VTButton;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1145
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTButton;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lnet/veritran/component/VTButton;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lnet/veritran/component/VTButton;->setVisualAreaName(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lnet/veritran/component/VTButton;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1148
    invoke-virtual {v6}, Lnet/veritran/component/VTButton;->init()V

    move-object v13, v6

    .line 1149
    goto :goto_0

    .line 1150
    .end local v6    # "vtButton":Lnet/veritran/component/VTButton;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTCHECKBOX"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1151
    new-instance v8, Lnet/veritran/component/VTCheckboxComponent;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lnet/veritran/component/VTCheckboxComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1152
    .local v8, "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lnet/veritran/component/VTCheckboxComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1153
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lnet/veritran/component/VTCheckboxComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lnet/veritran/component/VTCheckboxComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lnet/veritran/component/VTCheckboxComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1156
    invoke-virtual {v8}, Lnet/veritran/component/VTCheckboxComponent;->init()V

    move-object v13, v8

    .line 1157
    goto/16 :goto_0

    .line 1158
    .end local v8    # "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTRADIOBUTTON"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1159
    new-instance v20, Lnet/veritran/component/VTRadioButtonComponent;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTRadioButtonComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1160
    .local v20, "vtRadioButton":Lnet/veritran/component/VTRadioButtonComponent;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTRadioButtonComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1161
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTRadioButtonComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTRadioButtonComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTRadioButtonComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1164
    invoke-virtual/range {v20 .. v20}, Lnet/veritran/component/VTRadioButtonComponent;->init()V

    move-object/from16 v13, v20

    .line 1165
    goto/16 :goto_0

    .line 1166
    .end local v20    # "vtRadioButton":Lnet/veritran/component/VTRadioButtonComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTINPUT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1167
    new-instance v13, Lnet/veritran/component/VTInputText;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTInputText;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1168
    .local v13, "vtInput":Lnet/veritran/component/VTInputText;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputText;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1169
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputText;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1170
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputText;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputText;->setVisualAreaName(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v13}, Lnet/veritran/component/VTInputText;->init()V

    goto/16 :goto_0

    .line 1174
    .end local v13    # "vtInput":Lnet/veritran/component/VTInputText;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTPASS"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1175
    new-instance v13, Lnet/veritran/component/VTInputPassword;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTInputPassword;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1176
    .local v13, "vtInput":Lnet/veritran/component/VTInputPassword;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputPassword;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1177
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputPassword;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1178
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputPassword;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputPassword;->setVisualAreaName(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v13}, Lnet/veritran/component/VTInputPassword;->init()V

    goto/16 :goto_0

    .line 1182
    .end local v13    # "vtInput":Lnet/veritran/component/VTInputPassword;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTHIDDEN"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1183
    new-instance v13, Lnet/veritran/component/VTInputHidden;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lnet/veritran/component/VTInputHidden;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1184
    .local v13, "vtInput":Lnet/veritran/component/VTInputHidden;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputHidden;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1185
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputHidden;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1186
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputHidden;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lnet/veritran/component/VTInputHidden;->setVisualAreaName(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {v13}, Lnet/veritran/component/VTInputHidden;->init()V

    goto/16 :goto_0

    .line 1190
    .end local v13    # "vtInput":Lnet/veritran/component/VTInputHidden;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTPROGRESSBAR"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1191
    new-instance v19, Lnet/veritran/component/VTProgressBar;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTProgressBar;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1192
    .local v19, "vtProgressBar":Lnet/veritran/component/VTProgressBar;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTProgressBar;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1193
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTProgressBar;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTProgressBar;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1194
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTProgressBar;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTProgressBar;->setVisualAreaName(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/component/VTProgressBar;->init()V

    move-object/from16 v13, v19

    .line 1197
    goto/16 :goto_0

    .line 1198
    .end local v19    # "vtProgressBar":Lnet/veritran/component/VTProgressBar;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTLIST"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 1200
    const-string v26, "listtype"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .local v4, "listType":Ljava/lang/String;
    const-string v26, "COMBO"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    const-string v26, "DROPDOWN"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 1202
    :cond_9
    new-instance v14, Lnet/veritran/component/VTListComboComponent;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/veritran/component/VTListComboComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1215
    .local v14, "vtList":Lnet/veritran/component/VTListComponent;
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lnet/veritran/component/VTListComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1216
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lnet/veritran/component/VTListComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1217
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lnet/veritran/component/VTListComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lnet/veritran/component/VTListComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v14}, Lnet/veritran/component/VTListComponent;->init()V

    move-object v13, v14

    .line 1220
    goto/16 :goto_0

    .line 1203
    .end local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_a
    const-string v26, "SLIDER"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 1204
    new-instance v14, Lnet/veritran/component/VTListCarouselComponent;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/veritran/component/VTListCarouselComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .restart local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    goto :goto_1

    .line 1206
    .end local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    :cond_b
    const-string v26, "orientation"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1207
    .local v5, "orientation":Ljava/lang/String;
    if-eqz v5, :cond_c

    const-string v26, "H"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 1208
    new-instance v14, Lnet/veritran/component/VTListHorizontalComponent;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/veritran/component/VTListHorizontalComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .restart local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    goto :goto_1

    .line 1209
    .end local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    :cond_c
    if-eqz v5, :cond_d

    const-string v26, "T"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 1210
    new-instance v14, Lnet/veritran/component/VTListGridComponent;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/veritran/component/VTListGridComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .restart local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    goto :goto_1

    .line 1212
    .end local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    :cond_d
    new-instance v14, Lnet/veritran/component/VTListImageComponent;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/veritran/component/VTListImageComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .restart local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    goto :goto_1

    .line 1221
    .end local v4    # "listType":Ljava/lang/String;
    .end local v5    # "orientation":Ljava/lang/String;
    .end local v14    # "vtList":Lnet/veritran/component/VTListComponent;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTPANEL"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1222
    new-instance v17, Lnet/veritran/component/VTPanel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTPanel;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1223
    .local v17, "vtPanel":Lnet/veritran/component/VTPanel;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPanel;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1224
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPanel;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1225
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPanel;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPanel;->setVisualAreaName(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/component/VTPanel;->init()V

    move-object/from16 v13, v17

    .line 1228
    goto/16 :goto_0

    .line 1229
    .end local v17    # "vtPanel":Lnet/veritran/component/VTPanel;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTSELECTOR"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 1230
    new-instance v21, Lnet/veritran/component/VTSelectorComponent;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTSelectorComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1231
    .local v21, "vtSelector":Lnet/veritran/component/VTSelectorComponent;
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSelectorComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1232
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSelectorComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1233
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSelectorComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSelectorComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/component/VTSelectorComponent;->init()V

    move-object/from16 v13, v21

    .line 1236
    goto/16 :goto_0

    .line 1237
    .end local v21    # "vtSelector":Lnet/veritran/component/VTSelectorComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTLOGICALCONTAINER"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 1238
    new-instance v15, Lnet/veritran/component/VTLogicalContainer;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lnet/veritran/component/VTLogicalContainer;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1239
    .local v15, "vtLogicalContainer":Lnet/veritran/component/VTLogicalContainer;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lnet/veritran/component/VTLogicalContainer;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1240
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lnet/veritran/component/VTLogicalContainer;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1241
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lnet/veritran/component/VTLogicalContainer;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Lnet/veritran/component/VTLogicalContainer;->setVisualAreaName(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v15}, Lnet/veritran/component/VTLogicalContainer;->init()V

    move-object v13, v15

    .line 1244
    goto/16 :goto_0

    .line 1245
    .end local v15    # "vtLogicalContainer":Lnet/veritran/component/VTLogicalContainer;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTFRAMEDPANEL"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 1246
    new-instance v9, Lnet/veritran/component/VTFramedPanel;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lnet/veritran/component/VTFramedPanel;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1247
    .local v9, "vtFramedPanel":Lnet/veritran/component/VTFramedPanel;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lnet/veritran/component/VTFramedPanel;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1248
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;

    .line 1249
    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lnet/veritran/component/VTFramedPanel;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1250
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lnet/veritran/component/VTFramedPanel;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Lnet/veritran/component/VTFramedPanel;->setVisualAreaName(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v9}, Lnet/veritran/component/VTFramedPanel;->init()V

    move-object v13, v9

    .line 1253
    goto/16 :goto_0

    .line 1254
    .end local v9    # "vtFramedPanel":Lnet/veritran/component/VTFramedPanel;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTSLIDEPANEL"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 1255
    new-instance v22, Lnet/veritran/component/VTSlidePanel;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTSlidePanel;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1256
    .local v22, "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSlidePanel;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1257
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSlidePanel;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1258
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSlidePanel;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1259
    invoke-virtual/range {v22 .. v22}, Lnet/veritran/component/VTSlidePanel;->init()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTSlidePanel;->setVisualAreaName(Ljava/lang/String;)V

    .line 1261
    invoke-static/range {v22 .. v22}, Lnet/veritran/VTSlidingPanelManager;->addSlidingPanel(Lnet/veritran/component/VTSlidePanel;)V

    .line 1262
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1263
    .end local v22    # "vtSlidePanel":Lnet/veritran/component/VTSlidePanel;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTSTATICTABLE"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 1264
    new-instance v23, Lnet/veritran/component/VTStaticTable;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTStaticTable;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1265
    .local v23, "vtTable":Lnet/veritran/component/VTStaticTable;
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTStaticTable;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1266
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTStaticTable;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1267
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTStaticTable;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTStaticTable;->setVisualAreaName(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {v23 .. v23}, Lnet/veritran/component/VTStaticTable;->init()V

    move-object/from16 v13, v23

    .line 1270
    goto/16 :goto_0

    .line 1271
    .end local v23    # "vtTable":Lnet/veritran/component/VTStaticTable;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTDATAGRID"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1272
    new-instance v10, Lnet/veritran/component/VTDataGridComponent;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lnet/veritran/component/VTDataGridComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1273
    .local v10, "vtGrid":Lnet/veritran/component/VTDataGridComponent;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lnet/veritran/component/VTDataGridComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1274
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lnet/veritran/component/VTDataGridComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1275
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Lnet/veritran/component/VTDataGridComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lnet/veritran/component/VTDataGridComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v10}, Lnet/veritran/component/VTDataGridComponent;->init()V

    move-object v13, v10

    .line 1278
    goto/16 :goto_0

    .line 1279
    .end local v10    # "vtGrid":Lnet/veritran/component/VTDataGridComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTPOPUP"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1280
    new-instance v18, Lnet/veritran/component/VTPopupComponent;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTPopupComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1281
    .local v18, "vtPopup":Lnet/veritran/component/VTPopupComponent;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPopupComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1282
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPopupComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;)V

    .line 1283
    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPopupComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTPopupComponent;->setVisualAreaName(Ljava/lang/String;)V

    move-object/from16 v13, v18

    .line 1286
    goto/16 :goto_0

    .line 1287
    .end local v18    # "vtPopup":Lnet/veritran/component/VTPopupComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTMAP"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 1288
    new-instance v16, Lnet/veritran/component/VTMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTMap;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1289
    .local v16, "vtMap":Lnet/veritran/component/VTMap;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTMap;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1290
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTMap;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1291
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTMap;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTMap;->setVisualAreaName(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {v16 .. v16}, Lnet/veritran/component/VTMap;->init()V

    move-object/from16 v13, v16

    .line 1295
    goto/16 :goto_0

    .line 1296
    .end local v16    # "vtMap":Lnet/veritran/component/VTMap;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTHTMLAREA"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 1297
    new-instance v11, Lnet/veritran/component/VTHTMLAreaComponent;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lnet/veritran/component/VTHTMLAreaComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1298
    .local v11, "vtHtmlArea":Lnet/veritran/component/VTHTMLAreaComponent;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lnet/veritran/component/VTHTMLAreaComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1299
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lnet/veritran/component/VTHTMLAreaComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1300
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lnet/veritran/component/VTHTMLAreaComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lnet/veritran/component/VTHTMLAreaComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v11}, Lnet/veritran/component/VTHTMLAreaComponent;->init()V

    move-object v13, v11

    .line 1303
    goto/16 :goto_0

    .line 1304
    .end local v11    # "vtHtmlArea":Lnet/veritran/component/VTHTMLAreaComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    const-string v27, "VTCHART"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 1305
    new-instance v7, Lnet/veritran/component/VTChartComponent;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lnet/veritran/component/VTChartComponent;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1306
    .local v7, "vtChart":Lnet/veritran/component/VTChartComponent;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lnet/veritran/component/VTChartComponent;->setArrayReaderAdapter(Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)V

    .line 1307
    check-cast p1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    .end local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lnet/veritran/component/VTChartComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1308
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lnet/veritran/component/VTChartComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lnet/veritran/component/VTChartComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v7}, Lnet/veritran/component/VTChartComponent;->init()V

    move-object v13, v7

    .line 1311
    goto/16 :goto_0

    .line 1314
    .end local v7    # "vtChart":Lnet/veritran/component/VTChartComponent;
    .restart local p1    # "c":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_19
    const-string v26, "VTCommonActivity"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Not found: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;-><init>()V

    .line 1316
    .local v3, "cvc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;
    const-string v26, "value"

    invoke-virtual/range {p1 .. p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentType()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance v25, Lnet/veritran/component/VTText;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/component/VTText;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 1318
    .local v25, "vttext":Lnet/veritran/component/VTText;
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lnet/veritran/component/VTText;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    .line 1319
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTText;->setParent(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v13, v25

    .line 1320
    goto/16 :goto_0
.end method

.method private getVisualAreasList(Lnet/veritran/component/VTVisualArea;Ljava/util/List;Z)V
    .locals 8
    .param p1, "parent"    # Lnet/veritran/component/VTVisualArea;
    .param p3, "onlyLeaves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/veritran/component/VTVisualArea;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1416
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1418
    .local v3, "parentName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1419
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v5

    check-cast v5, Lnet/veritran/component/VTVisualArea;

    invoke-virtual {v5}, Lnet/veritran/component/VTVisualArea;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1423
    :goto_0
    const-string v5, "VTCommonActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VisualArea name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 1425
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1427
    invoke-virtual {p1, v1}, Lnet/veritran/component/VTVisualArea;->getChildAt(I)Lnet/veritran/component/VTUIComponent;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/VTVisualArea;

    .line 1430
    .local v4, "s":Lnet/veritran/component/VTVisualArea;
    invoke-direct {p0, v4, p2, p3}, Lnet/veritran/VTCommonActivity;->getVisualAreasList(Lnet/veritran/component/VTVisualArea;Ljava/util/List;Z)V

    .line 1426
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1420
    .end local v1    # "i":I
    .end local v4    # "s":Lnet/veritran/component/VTVisualArea;
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VTCommonActivity"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1432
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method private initConfigContentView()V
    .locals 9

    .prologue
    .line 530
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "$layout"

    const-string v3, "config_info"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/veritran/VTCommonActivity;->setContentView(I)V

    .line 533
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 535
    .local v5, "InfoList":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VTCommonActivity$Info;>;"
    :try_start_0
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "BRAND"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "BRAND"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    :try_start_1
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "MODEL"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "MODEL"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    :goto_1
    :try_start_2
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "CLIENT"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "CLIENT"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 550
    :goto_2
    :try_start_3
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "PRODUCT"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "PRODUCT"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 555
    :goto_3
    :try_start_4
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "APPNAME"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "APPNAME"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 560
    :goto_4
    :try_start_5
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "RELEASE"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "RELEASE"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 565
    :goto_5
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/Model;->getProductId()Ljava/lang/String;

    move-result-object v8

    .line 568
    .local v8, "prodId":Ljava/lang/String;
    :try_start_6
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "HOST"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "HOST"

    invoke-virtual {v3, v8, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 574
    :goto_6
    :try_start_7
    new-instance v1, Lnet/veritran/VTCommonActivity$Info;

    const-string v2, "GATEWAY"

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "GATEWAY"

    invoke-virtual {v3, v8, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lnet/veritran/VTCommonActivity$Info;-><init>(Lnet/veritran/VTCommonActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 580
    :goto_7
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "$id"

    const-string v3, "lvInfoConstants"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/veritran/VTCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lnet/veritran/VTCommonActivity;->lvConfigInfo:Landroid/widget/ListView;

    .line 582
    new-instance v0, Lnet/veritran/VTCommonActivity$2;

    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090007

    const v4, 0x1020014

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lnet/veritran/VTCommonActivity$2;-><init>(Lnet/veritran/VTCommonActivity;Landroid/content/Context;IILjava/util/List;Ljava/util/List;)V

    .line 596
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/veritran/VTCommonActivity$Info;>;"
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->lvConfigInfo:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 597
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v2, "$id"

    const-string v3, "bDeleteConfig"

    invoke-virtual {v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/veritran/VTCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lnet/veritran/VTCommonActivity;->bDeleteConfig:Landroid/widget/Button;

    .line 598
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->bDeleteConfig:Landroid/widget/Button;

    new-instance v2, Lnet/veritran/VTCommonActivity$3;

    invoke-direct {v2, p0}, Lnet/veritran/VTCommonActivity$3;-><init>(Lnet/veritran/VTCommonActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    return-void

    .line 536
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lnet/veritran/VTCommonActivity$Info;>;"
    .end local v8    # "prodId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 537
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant BRAND empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 542
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant MODEL empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 546
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 547
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant CLIENT empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 551
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 552
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant PRODUCT empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 556
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 557
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant APPNAME empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 561
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 562
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant RELEASE empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 569
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "prodId":Ljava/lang/String;
    :catch_6
    move-exception v7

    .line 570
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant HOST empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 575
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v7

    .line 576
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception constant GATEWAY empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method private populateConfigurableSplash()Z
    .locals 2

    .prologue
    .line 493
    const-string v0, "VTCommonActivity"

    const-string v1, "-->populateConfigurableSplash()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity$InputsByArea;->removeAll()V

    .line 496
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->updateScreenSize()V

    .line 498
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->redrawConfigurableSplash()Z

    move-result v0

    return v0
.end method

.method private populateList(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1051
    const-string v0, "VTCommonActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->populateList() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity$InputsByArea;->removeAll()V

    .line 1054
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->updateScreenSize()V

    .line 1055
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->redrawCurrentView()V

    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/VTCommonActivity;->exitAllowed:Z

    .line 1058
    return-void
.end method

.method private populateSplash()V
    .locals 3

    .prologue
    .line 674
    .line 676
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$layout"

    const-string v2, "splash"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 674
    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->setContentView(I)V

    .line 681
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$id"

    const-string v2, "txtProgressPercentage"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 679
    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    .line 685
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$id"

    const-string v2, "txtProgressMessage"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 683
    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressMessage:Landroid/widget/TextView;

    .line 690
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$id"

    const-string v2, "txtVersion"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 688
    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->txtVersion:Landroid/widget/TextView;

    .line 692
    invoke-direct {p0, p0}, Lnet/veritran/VTCommonActivity;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->setApplicationVersion(Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    const-string v1, "$id"

    const-string v2, "prgProgress"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 694
    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->prgProgress:Landroid/widget/ProgressBar;

    .line 699
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->hideProgress()V

    .line 700
    const-string v0, "VTCommonActivity"

    const-string v1, "-->populateSplash()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    :cond_0
    const-string v0, "VTCommonActivity"

    const-string v1, "<--populateSplash()"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private processVisualAreas(Ljava/util/List;Lnet/veritran/component/VTVisualArea;)V
    .locals 24
    .param p2, "parent"    # Lnet/veritran/component/VTVisualArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;",
            ">;",
            "Lnet/veritran/component/VTVisualArea;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1477
    .local p1, "vas":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;>;"
    if-nez p1, :cond_1

    .line 1545
    :cond_0
    return-void

    .line 1480
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_0

    .line 1481
    new-instance v16, Lnet/veritran/component/VTVisualArea;

    invoke-direct/range {v16 .. v16}, Lnet/veritran/component/VTVisualArea;-><init>()V

    .line 1482
    .local v16, "vtva":Lnet/veritran/component/VTVisualArea;
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1484
    .local v7, "l":Landroid/widget/LinearLayout;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;

    .line 1485
    .local v15, "va":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1486
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1487
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lnet/veritran/component/VTVisualArea;->setName(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getSize()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 1489
    .local v14, "size":Ljava/lang/Float;
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getIsWrapper()Ljava/lang/String;

    move-result-object v19

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 1491
    .local v18, "wrapper":Z
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/component/VTVisualArea;->getOrientation()Ljava/lang/String;

    move-result-object v12

    .line 1493
    .local v12, "parentOrientation":Ljava/lang/String;
    if-nez v18, :cond_8

    .line 1494
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1496
    const/high16 v19, 0x42c80000    # 100.0f

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 1497
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getDistribution()Ljava/lang/String;

    move-result-object v4

    .line 1498
    .local v4, "distribution":Ljava/lang/String;
    const-string v19, "VTCommonActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "VisualArea::distribution:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    if-nez v4, :cond_2

    .line 1500
    const-string v4, "left"

    .line 1501
    :cond_2
    const-string v19, "right"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1502
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1521
    .end local v4    # "distribution":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/component/VTVisualArea;->getMeasuredWidth()I

    move-result v13

    .line 1522
    .local v13, "parentWidth":I
    invoke-virtual/range {p2 .. p2}, Lnet/veritran/component/VTVisualArea;->getMeasuredHeight()I

    move-result v11

    .line 1525
    .local v11, "parentHeight":I
    const-string v19, "H"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1526
    int-to-float v0, v13

    move/from16 v19, v0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v20

    mul-float v19, v19, v20

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v3, v0

    .line 1527
    .local v3, "childWidth":I
    move v2, v11

    .line 1532
    .local v2, "childHeight":I
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lnet/veritran/component/VTVisualArea;->setMeasuredWidth(I)V

    .line 1533
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lnet/veritran/component/VTVisualArea;->setMeasuredHeight(I)V

    .line 1534
    move/from16 v17, v3

    .line 1535
    .local v17, "widthDP":I
    move v5, v2

    .line 1536
    .local v5, "heightDP":I
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v17

    invoke-direct {v8, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1537
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lnet/veritran/component/VTVisualArea;->setView(Landroid/widget/LinearLayout;)V

    .line 1539
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getOrientation()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTVisualArea;->setOrientation(Ljava/lang/String;)V

    .line 1541
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTVisualArea;->addChild(Lnet/veritran/component/VTUIComponent;)V

    .line 1542
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getElements()Ljava/util/List;

    move-result-object v10

    .line 1543
    .local v10, "nvas":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1}, Lnet/veritran/VTCommonActivity;->processVisualAreas(Ljava/util/List;Lnet/veritran/component/VTVisualArea;)V

    .line 1480
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1503
    .end local v2    # "childHeight":I
    .end local v3    # "childWidth":I
    .end local v5    # "heightDP":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "nvas":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;>;"
    .end local v11    # "parentHeight":I
    .end local v13    # "parentWidth":I
    .end local v17    # "widthDP":I
    .restart local v4    # "distribution":Ljava/lang/String;
    :cond_3
    const-string v19, "top"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1504
    const/16 v19, 0x30

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 1505
    :cond_4
    const-string v19, "bottom"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1506
    const/16 v19, 0x50

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_1

    .line 1507
    :cond_5
    const-string v19, "middle"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1508
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_1

    .line 1509
    :cond_6
    const-string v19, "center"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1510
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_1

    .line 1512
    :cond_7
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_1

    .line 1515
    .end local v4    # "distribution":Ljava/lang/String;
    :cond_8
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualArea;->getOrientation()Ljava/lang/String;

    move-result-object v19

    const-string v20, "H"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1516
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_1

    .line 1518
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_1

    .line 1529
    .restart local v11    # "parentHeight":I
    .restart local v13    # "parentWidth":I
    :cond_a
    move v3, v13

    .line 1530
    .restart local v3    # "childWidth":I
    int-to-float v0, v11

    move/from16 v19, v0

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v20

    mul-float v19, v19, v20

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v2, v0

    .restart local v2    # "childHeight":I
    goto/16 :goto_2
.end method

.method private redrawConfigurableSplash()Z
    .locals 26

    .prologue
    .line 2593
    :try_start_0
    new-instance v22, Lnet/veritran/android/implementation/AndroidUILibraryImplementation;

    invoke-direct/range {v22 .. v22}, Lnet/veritran/android/implementation/AndroidUILibraryImplementation;-><init>()V

    invoke-static/range {v22 .. v22}, Lnet/veritran/vtuserapplication/model/Setup;->setUILibrary(Lnet/veritran/vtuserapplication/ui/UILibraryInterface;)V

    .line 2594
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lnet/veritran/vtuserapplication/model/Setup;->setApplicationSmartImplementation(Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;)V

    .line 2595
    new-instance v22, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;-><init>(Landroid/content/Context;)V

    invoke-static/range {v22 .. v22}, Lnet/veritran/vtuserapplication/model/Setup;->setApplicationHelper(Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;)V

    .line 2603
    new-instance v22, Lnet/veritran/android/implementation/AndroidSAXParser;

    invoke-direct/range {v22 .. v22}, Lnet/veritran/android/implementation/AndroidSAXParser;-><init>()V

    invoke-static/range {v22 .. v22}, Lnet/veritran/vtuserapplication/model/Setup;->setSAXParserImplementation(Lnet/veritran/vtuserapplication/model/SAXParserInterface;)V

    .line 2606
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    new-instance v23, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    const-string v24, "SPLASH"

    invoke-direct/range {v23 .. v24}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2612
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 2614
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v23

    const-string v24, "$raw"

    const-string v25, "splash_conf"

    invoke-virtual/range {v23 .. v25}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 2612
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v8

    .line 2617
    .local v8, "is":Ljava/io/InputStream;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->setInputStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/model/InvalidSetupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2623
    :try_start_2
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->parse()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2633
    :try_start_3
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lnet/veritran/VTUserApplicationSmart;->resolveParametersSplash()V

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/veritran/VTUserApplicationSmart;->getSplashAppProperties()Ljava/util/Hashtable;

    move-result-object v22

    const-string v23, "startview"

    invoke-virtual/range {v22 .. v23}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2639
    .local v12, "nextView":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lnet/veritran/VTCommonActivity$InputsByArea;->removeAll()V

    .line 2640
    if-eqz v12, :cond_3

    .line 2643
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lnet/veritran/VTUserApplicationSmart;->getSplashView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    move-result-object v20

    .line 2645
    .local v20, "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v22, v0

    .line 2646
    invoke-virtual/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getLayoutName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/VTUserApplicationSmart;->getSplashConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    .line 2647
    .local v10, "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    invoke-virtual/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getThemeName()Ljava/lang/String;

    move-result-object v14

    .line 2648
    .local v14, "sThemeName":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v14

    .line 2649
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lnet/veritran/VTUserApplicationSmart;->getSplashTheme(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    move-result-object v16

    .line 2650
    .local v16, "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    invoke-static/range {v16 .. v16}, Lnet/veritran/ThemeManager;->setTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;)V

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getCurrentOrientation()I

    move-result v4

    .line 2653
    .local v4, "androidOrientation":I
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v4, v0, :cond_1

    .line 2654
    const/4 v5, 0x1

    .line 2659
    .local v5, "currentOrientatation":I
    :goto_0
    sget-object v22, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v22 .. v22}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2660
    new-instance v22, Lnet/veritran/component/VTVisualArea;

    invoke-direct/range {v22 .. v22}, Lnet/veritran/component/VTVisualArea;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    .line 2664
    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getOrientationLandscape()Ljava/lang/String;

    move-result-object v13

    .line 2665
    .local v13, "orientation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lnet/veritran/component/VTVisualArea;->setOrientation(Ljava/lang/String;)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenWidth()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/component/VTVisualArea;->setMeasuredWidth(I)V

    .line 2667
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenHeight()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/component/VTVisualArea;->setMeasuredHeight(I)V

    .line 2670
    const-string v22, "H"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 2672
    sget-object v22, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2678
    :goto_1
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2680
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    sget-object v22, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2682
    sget-object v22, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/component/VTVisualArea;->setName(Ljava/lang/String;)V

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    sget-object v23, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v22 .. v23}, Lnet/veritran/component/VTVisualArea;->setView(Landroid/widget/LinearLayout;)V

    .line 2688
    invoke-virtual {v10, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getElementsByOrientation(I)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v23, v0

    .line 2687
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->processVisualAreas(Ljava/util/List;Lnet/veritran/component/VTVisualArea;)V

    .line 2690
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2692
    .local v18, "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->getVisualAreasList(Lnet/veritran/component/VTVisualArea;Ljava/util/List;Z)V

    .line 2693
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2695
    .local v17, "va":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getConfigurationVisualAreaInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    move-result-object v19

    .line 2697
    .local v19, "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;

    move-result-object v21

    .line 2700
    .local v21, "visualArea":Lnet/veritran/component/VTVisualArea;
    if-eqz v19, :cond_0

    .line 2702
    const-string v15, "S000"

    .line 2704
    .local v15, "sequence":Ljava/lang/String;
    const-string v22, "VTCommonActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Sequence for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getViewid()Ljava/lang/String;

    move-result-object v23

    const-string v24, "SPLASH"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v15, v3}, Lnet/veritran/VTUserApplicationSmart;->getSerializedVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v6

    .line 2713
    .local v6, "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lnet/veritran/VTCommonActivity;->drawVisualArea(Lnet/veritran/component/VTVisualArea;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 2716
    const/16 v22, 0x1

    .line 2729
    .end local v4    # "androidOrientation":I
    .end local v5    # "currentOrientatation":I
    .end local v6    # "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "nextView":Ljava/lang/String;
    .end local v13    # "orientation":Ljava/lang/String;
    .end local v14    # "sThemeName":Ljava/lang/String;
    .end local v15    # "sequence":Ljava/lang/String;
    .end local v16    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .end local v17    # "va":Ljava/lang/String;
    .end local v18    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    .end local v20    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    .end local v21    # "visualArea":Lnet/veritran/component/VTVisualArea;
    :goto_2
    return v22

    .line 2618
    :catch_0
    move-exception v9

    .line 2620
    .local v9, "isc":Lnet/veritran/vtuserapplication/model/InvalidSetupException;
    const/16 v22, 0x0

    goto :goto_2

    .line 2624
    .end local v9    # "isc":Lnet/veritran/vtuserapplication/model/InvalidSetupException;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 2629
    .local v7, "ex":Ljava/lang/RuntimeException;
    const/16 v22, 0x0

    goto :goto_2

    .line 2656
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "androidOrientation":I
    .restart local v10    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .restart local v12    # "nextView":Ljava/lang/String;
    .restart local v14    # "sThemeName":Ljava/lang/String;
    .restart local v16    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .restart local v20    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "currentOrientatation":I
    goto/16 :goto_0

    .line 2675
    .restart local v13    # "orientation":Ljava/lang/String;
    :cond_2
    sget-object v22, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setOrientation(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 2724
    .end local v4    # "androidOrientation":I
    .end local v5    # "currentOrientatation":I
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .end local v12    # "nextView":Ljava/lang/String;
    .end local v13    # "orientation":Ljava/lang/String;
    .end local v14    # "sThemeName":Ljava/lang/String;
    .end local v16    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .end local v20    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :catch_2
    move-exception v7

    .line 2726
    .local v7, "ex":Ljava/lang/Exception;
    const/16 v22, 0x0

    goto :goto_2

    .line 2729
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v12    # "nextView":Ljava/lang/String;
    :cond_3
    const/16 v22, 0x0

    goto :goto_2
.end method

.method private redrawCurrentView()V
    .locals 25

    .prologue
    .line 2737
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lnet/veritran/vtuserapplication/model/NavigationManager;->getCurrentView()Lnet/veritran/vtuserapplication/model/NavigationView;

    move-result-object v5

    .line 2739
    .local v5, "curView":Lnet/veritran/vtuserapplication/model/NavigationView;
    if-nez v5, :cond_0

    .line 2846
    .end local v5    # "curView":Lnet/veritran/vtuserapplication/model/NavigationView;
    :goto_0
    return-void

    .line 2744
    .restart local v5    # "curView":Lnet/veritran/vtuserapplication/model/NavigationView;
    :cond_0
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v11

    .line 2747
    .local v11, "nextView":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lnet/veritran/VTCommonActivity$InputsByArea;->removeAll()V

    .line 2748
    if-eqz v11, :cond_4

    .line 2754
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lnet/veritran/VTUserApplicationSmart;->getView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    move-result-object v19

    .line 2756
    .local v19, "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v21, v0

    .line 2757
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getLayoutName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    .line 2758
    .local v9, "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getThemeName()Ljava/lang/String;

    move-result-object v13

    .line 2759
    .local v13, "sThemeName":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v13, v0}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v13

    .line 2760
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lnet/veritran/VTUserApplicationSmart;->getTheme(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    move-result-object v15

    .line 2761
    .local v15, "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    invoke-static {v15}, Lnet/veritran/ThemeManager;->setTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;)V

    .line 2762
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getCurrentOrientation()I

    move-result v4

    .line 2764
    .local v4, "androidOrientation":I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 2765
    const/4 v6, 0x1

    .line 2770
    .local v6, "currentOrientatation":I
    :goto_1
    sget-object v21, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2771
    new-instance v21, Lnet/veritran/component/VTVisualArea;

    invoke-direct/range {v21 .. v21}, Lnet/veritran/component/VTVisualArea;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    .line 2775
    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getOrientationLandscape()Ljava/lang/String;

    move-result-object v12

    .line 2776
    .local v12, "orientation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lnet/veritran/component/VTVisualArea;->setOrientation(Ljava/lang/String;)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v21, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/component/VTVisualArea;->setMeasuredWidth(I)V

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v21, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/component/VTVisualArea;->setMeasuredHeight(I)V

    .line 2781
    const-string v21, "H"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2783
    sget-object v21, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2789
    :goto_2
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2791
    .local v10, "lp":Landroid/view/ViewGroup$LayoutParams;
    sget-object v21, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2793
    sget-object v21, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/component/VTVisualArea;->setName(Ljava/lang/String;)V

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v21, v0

    sget-object v22, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v21 .. v22}, Lnet/veritran/component/VTVisualArea;->setView(Landroid/widget/LinearLayout;)V

    .line 2813
    invoke-virtual {v9, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getElementsByOrientation(I)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    .line 2812
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->processVisualAreas(Ljava/util/List;Lnet/veritran/component/VTVisualArea;)V

    .line 2815
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2817
    .local v17, "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->getVisualAreasList(Lnet/veritran/component/VTVisualArea;Ljava/util/List;Z)V

    .line 2818
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2820
    .local v16, "va":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getConfigurationVisualAreaInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    move-result-object v18

    .line 2822
    .local v18, "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;

    move-result-object v20

    .line 2825
    .local v20, "visualArea":Lnet/veritran/component/VTVisualArea;
    if-eqz v18, :cond_1

    .line 2826
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getSequenceForArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2827
    .local v14, "sequence":Ljava/lang/String;
    const-string v22, "VTCommonActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Sequence for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getViewid()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v14, v3}, Lnet/veritran/VTUserApplicationSmart;->getSerializedVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v7

    .line 2835
    .local v7, "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lnet/veritran/VTCommonActivity;->drawVisualArea(Lnet/veritran/component/VTVisualArea;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2842
    .end local v4    # "androidOrientation":I
    .end local v5    # "curView":Lnet/veritran/vtuserapplication/model/NavigationView;
    .end local v6    # "currentOrientatation":I
    .end local v7    # "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v9    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .end local v10    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "nextView":Ljava/lang/String;
    .end local v12    # "orientation":Ljava/lang/String;
    .end local v13    # "sThemeName":Ljava/lang/String;
    .end local v14    # "sequence":Ljava/lang/String;
    .end local v15    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .end local v16    # "va":Ljava/lang/String;
    .end local v17    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    .end local v19    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    .end local v20    # "visualArea":Lnet/veritran/component/VTVisualArea;
    :catch_0
    move-exception v8

    .line 2844
    .local v8, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lnet/veritran/VTUserApplicationSmart;->restartApplication()V

    goto/16 :goto_0

    .line 2767
    .end local v8    # "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    .restart local v4    # "androidOrientation":I
    .restart local v5    # "curView":Lnet/veritran/vtuserapplication/model/NavigationView;
    .restart local v9    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .restart local v11    # "nextView":Ljava/lang/String;
    .restart local v13    # "sThemeName":Ljava/lang/String;
    .restart local v15    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .restart local v19    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "currentOrientatation":I
    goto/16 :goto_1

    .line 2786
    .restart local v12    # "orientation":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v21, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_2

    .line 2840
    .end local v4    # "androidOrientation":I
    .end local v6    # "currentOrientatation":I
    .end local v9    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .end local v12    # "orientation":Ljava/lang/String;
    .end local v13    # "sThemeName":Ljava/lang/String;
    .end local v15    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .end local v19    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/model/NavigationManager;->applyNavigationView(Lnet/veritran/vtuserapplication/model/NavigationView;)V
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private removeComponentsFromSession()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1037
    return-void
.end method

.method private removeComponentsFromSessionInVisualArea(Ljava/lang/String;)V
    .locals 3
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 1041
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1042
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/component/VTUIComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1043
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/VTUIComponent;

    .line 1044
    .local v1, "vtComponent":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getVisualAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1048
    .end local v1    # "vtComponent":Lnet/veritran/component/VTUIComponent;
    :cond_1
    return-void
.end method

.method private retrieveFromBundle(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v18, v0

    const-string v19, "all"

    invoke-virtual/range {v18 .. v19}, Lnet/veritran/VTCommonActivity$InputsByArea;->getInputsByArea(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 3059
    .local v13, "inpArea2":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    if-eqz v13, :cond_6

    if-eqz p1, :cond_6

    .line 3060
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/veritran/VisualInputComponent;

    .line 3061
    .local v17, "vic":Lnet/veritran/VisualInputComponent;
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 3062
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v18

    if-nez v18, :cond_3

    .line 3064
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v18

    check-cast v18, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    .line 3066
    .local v6, "compId":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Lnet/veritran/component/view/VTTextInterface;

    .line 3068
    .local v11, "edit":Lnet/veritran/component/view/VTTextInterface;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3070
    .local v16, "text":Ljava/lang/String;
    :try_start_0
    invoke-interface {v11}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v14

    check-cast v14, Lnet/veritran/component/VTInputText;

    .line 3071
    .local v14, "input":Lnet/veritran/component/VTInputText;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/component/VTInputText;->setRetrievingFromBundle(Z)V

    .line 3072
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lnet/veritran/component/view/VTTextInterface;->setText(Ljava/lang/CharSequence;)V

    .line 3073
    const-string v18, "InputTextCom"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "recovering text:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    invoke-interface {v11}, Lnet/veritran/component/view/VTTextInterface;->beginBatchEdit()V

    .line 3076
    if-eqz v16, :cond_2

    .line 3077
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 3078
    add-int/lit8 v18, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lnet/veritran/component/view/VTTextInterface;->append(Ljava/lang/CharSequence;)V

    .line 3077
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3082
    .end local v12    # "i":I
    :cond_2
    invoke-interface {v11}, Lnet/veritran/component/view/VTTextInterface;->endBatchEdit()V

    .line 3083
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lnet/veritran/component/VTInputText;->setRetrievingFromBundle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3084
    .end local v14    # "input":Lnet/veritran/component/VTInputText;
    :catch_0
    move-exception v9

    .line 3085
    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "VTCommonActivity"

    const-string v20, "Catched exception empty (fortify)"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3088
    .end local v6    # "compId":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "edit":Lnet/veritran/component/view/VTTextInterface;
    .end local v16    # "text":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 3090
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v18

    check-cast v18, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    .line 3092
    .restart local v6    # "compId":Ljava/lang/String;
    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 3094
    .local v15, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 3095
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 3096
    .local v5, "combo":Landroid/widget/Spinner;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 3099
    .end local v5    # "combo":Landroid/widget/Spinner;
    .end local v6    # "compId":Ljava/lang/String;
    .end local v15    # "selectedPosition":Ljava/lang/Integer;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v18

    const/16 v20, 0x5

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 3100
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v18

    const/16 v20, 0x6

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 3102
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v18

    check-cast v18, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    .line 3104
    .restart local v6    # "compId":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3106
    .local v4, "checked":Z
    invoke-virtual/range {v17 .. v17}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    .line 3107
    .local v3, "cb":Landroid/widget/CompoundButton;
    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 3113
    .end local v3    # "cb":Landroid/widget/CompoundButton;
    .end local v4    # "checked":Z
    .end local v6    # "compId":Ljava/lang/String;
    .end local v17    # "vic":Lnet/veritran/VisualInputComponent;
    :cond_6
    if-eqz p1, :cond_9

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 3117
    .local v10, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 3118
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3119
    .local v8, "componentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/veritran/component/VTUIComponent;

    .line 3121
    .local v7, "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v7}, Lnet/veritran/component/VTUIComponent;->keepStatusesToBundle()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3123
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3125
    .local v2, "bundleForComponent":Landroid/os/Bundle;
    invoke-virtual {v7, v2}, Lnet/veritran/component/VTUIComponent;->restoreStatusFromBundle(Landroid/os/Bundle;)V

    goto :goto_2

    .line 3129
    .end local v2    # "bundleForComponent":Landroid/os/Bundle;
    .end local v7    # "component":Lnet/veritran/component/VTUIComponent;
    .end local v8    # "componentId":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->clear()V

    .line 3131
    .end local v10    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_9
    return-void
.end method

.method private sendMessageToCallApi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callApiId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->callApiListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/callapi/VTCallApiListener;

    .line 242
    .local v1, "callapiListener":Lnet/veritran/callapi/VTCallApiListener;
    invoke-interface {v1}, Lnet/veritran/callapi/VTCallApiListener;->getCallApiMessageId()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "callApiMessageId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-interface {v1, p2}, Lnet/veritran/callapi/VTCallApiListener;->sendMessageToCallApi(Ljava/lang/String;)Z

    move-result v2

    .line 250
    .end local v0    # "callApiMessageId":Ljava/lang/String;
    .end local v1    # "callapiListener":Lnet/veritran/callapi/VTCallApiListener;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setupCurrentState()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 425
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentState()I

    move-result v2

    if-nez v2, :cond_0

    .line 426
    invoke-virtual {p0, v6}, Lnet/veritran/VTCommonActivity;->changeState(I)Z

    .line 428
    :cond_0
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart;->getCurrentState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 471
    :goto_0
    :pswitch_0
    return-void

    .line 431
    :pswitch_1
    iget-wide v2, p0, Lnet/veritran/VTCommonActivity;->startSplashMilis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 433
    const-wide/16 v0, 0x5dc

    .line 434
    .local v0, "TIME_TO_WAIT_SPLASH":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/veritran/VTCommonActivity;->startSplashMilis:J

    sub-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 447
    .end local v0    # "TIME_TO_WAIT_SPLASH":J
    :cond_1
    new-instance v2, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;-><init>(Lnet/veritran/VTCommonActivity;Lnet/veritran/VTCommonActivity$1;)V

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lnet/veritran/VTCommonActivity$SetupCurrentStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 452
    :pswitch_2
    iget-wide v2, p0, Lnet/veritran/VTCommonActivity;->startSplashMilis:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/veritran/VTCommonActivity;->startSplashMilis:J

    .line 457
    :cond_2
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->populateConfigurableSplash()Z

    move-result v2

    if-nez v2, :cond_3

    .line 459
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->populateSplash()V

    goto :goto_0

    .line 463
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/veritran/VTCommonActivity;->isConfigurableSplash:Z

    .line 464
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->hideProgress()V

    .line 465
    invoke-direct {p0, p0}, Lnet/veritran/VTCommonActivity;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/veritran/VTCommonActivity;->setApplicationVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private storeToBundle(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2924
    iget-object v10, p0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    const-string v11, "all"

    invoke-virtual {v10, v11}, Lnet/veritran/VTCommonActivity$InputsByArea;->getInputsByArea(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2926
    .local v7, "inpArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    if-eqz v7, :cond_5

    if-eqz p1, :cond_5

    .line 2927
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/veritran/VisualInputComponent;

    .line 2928
    .local v9, "vic":Lnet/veritran/VisualInputComponent;
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_1

    .line 2929
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v10

    if-nez v10, :cond_2

    .line 2931
    :cond_1
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v10

    check-cast v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    .line 2933
    .local v1, "compId":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/veritran/component/view/VTTextInterface;

    .line 2935
    .local v6, "edit":Lnet/veritran/component/view/VTTextInterface;
    invoke-interface {v6}, Lnet/veritran/component/view/VTTextInterface;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v1, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2936
    .end local v1    # "compId":Ljava/lang/String;
    .end local v6    # "edit":Lnet/veritran/component/view/VTTextInterface;
    :cond_2
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v10

    const/4 v12, 0x2

    if-ne v10, v12, :cond_3

    .line 2939
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v10

    check-cast v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    .line 2941
    .restart local v1    # "compId":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 2943
    .local v8, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    invoke-virtual {p1, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2944
    .end local v1    # "compId":Ljava/lang/String;
    .end local v8    # "spinner":Landroid/widget/Spinner;
    :cond_3
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v10

    const/4 v12, 0x5

    if-eq v10, v12, :cond_4

    .line 2945
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v10

    const/4 v12, 0x6

    if-ne v10, v12, :cond_0

    .line 2948
    :cond_4
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v10

    check-cast v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getComponentId()Ljava/lang/String;

    move-result-object v1

    .line 2950
    .restart local v1    # "compId":Ljava/lang/String;
    invoke-virtual {v9}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 2952
    .local v0, "cb":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v10

    invoke-virtual {p1, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2958
    .end local v0    # "cb":Landroid/widget/CompoundButton;
    .end local v1    # "compId":Ljava/lang/String;
    .end local v9    # "vic":Lnet/veritran/VisualInputComponent;
    :cond_5
    iget-object v10, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 2960
    .local v5, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2961
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2962
    .local v4, "componentId":Ljava/lang/String;
    iget-object v10, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {v10, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/VTUIComponent;

    .line 2964
    .local v2, "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->keepStatusesToBundle()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2966
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2968
    .local v3, "componentBundle":Landroid/os/Bundle;
    invoke-virtual {v2, v3}, Lnet/veritran/component/VTUIComponent;->saveStatusToBundle(Landroid/os/Bundle;)V

    .line 2970
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 2977
    .end local v2    # "component":Lnet/veritran/component/VTUIComponent;
    .end local v3    # "componentBundle":Landroid/os/Bundle;
    .end local v4    # "componentId":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public addCallApiListener(Lnet/veritran/callapi/VTCallApiListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/veritran/callapi/VTCallApiListener;

    .prologue
    .line 234
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->callApiListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public applyMargins(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 7
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p2, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 3324
    const/4 v4, 0x0

    .line 3326
    .local v4, "marginTop":Ljava/lang/Integer;
    :try_start_0
    const-string v5, "top"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3327
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3331
    :goto_0
    const/4 v2, 0x0

    .line 3333
    .local v2, "marginLeft":Ljava/lang/Integer;
    :try_start_1
    const-string v5, "left"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3334
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3338
    :goto_1
    const/4 v3, 0x0

    .line 3340
    .local v3, "marginRight":Ljava/lang/Integer;
    :try_start_2
    const-string v5, "right"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3341
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3345
    :goto_2
    const/4 v1, 0x0

    .line 3347
    .local v1, "marginBottom":Ljava/lang/Integer;
    :try_start_3
    const-string v5, "bottom"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3348
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3354
    :goto_3
    return-void

    .line 3328
    .end local v1    # "marginBottom":Ljava/lang/Integer;
    .end local v2    # "marginLeft":Ljava/lang/Integer;
    .end local v3    # "marginRight":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 3329
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VTCommonActivity"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3335
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "marginLeft":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 3336
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "VTCommonActivity"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3342
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "marginRight":Ljava/lang/Integer;
    :catch_2
    move-exception v0

    .line 3343
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "VTCommonActivity"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3349
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "marginBottom":Ljava/lang/Integer;
    :catch_3
    move-exception v0

    .line 3350
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "VTCommonActivity"

    const-string v6, "Catched exception empty (fortify)"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public applyPadding(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/view/View;)V
    .locals 9
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 3295
    const/4 v4, 0x0

    .line 3297
    .local v4, "paddingTop":Ljava/lang/Integer;
    :try_start_0
    const-string v5, "paddingTop"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3301
    :goto_0
    const/4 v2, 0x0

    .line 3303
    .local v2, "paddingLeft":Ljava/lang/Integer;
    :try_start_1
    const-string v5, "paddingLeft"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 3307
    :goto_1
    const/4 v3, 0x0

    .line 3309
    .local v3, "paddingRight":Ljava/lang/Integer;
    :try_start_2
    const-string v5, "paddingRight"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 3313
    :goto_2
    const/4 v1, 0x0

    .line 3315
    .local v1, "paddingBottom":Ljava/lang/Integer;
    :try_start_3
    const-string v5, "paddingBottom"

    invoke-virtual {p1, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 3319
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 3320
    return-void

    .line 3298
    .end local v1    # "paddingBottom":Ljava/lang/Integer;
    .end local v2    # "paddingLeft":Ljava/lang/Integer;
    .end local v3    # "paddingRight":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 3299
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 3304
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "paddingLeft":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 3305
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 3310
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "paddingRight":Ljava/lang/Integer;
    :catch_2
    move-exception v0

    .line 3311
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 3316
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "paddingBottom":Ljava/lang/Integer;
    :catch_3
    move-exception v0

    .line 3317
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3
.end method

.method public applyTextAlign(Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "textAlign"    # Ljava/lang/String;
    .param p2, "l"    # Landroid/widget/LinearLayout;

    .prologue
    .line 3357
    if-nez p1, :cond_0

    .line 3358
    const-string p1, "left"

    .line 3359
    :cond_0
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3360
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3366
    :goto_0
    return-void

    .line 3361
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3362
    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 3364
    :cond_2
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public applyTextAlign(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 3369
    const-string v1, "textalign"

    invoke-virtual {p1, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3370
    .local v0, "textAlign":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3371
    const-string v0, "left"

    .line 3372
    :cond_0
    const-string v1, "center"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3373
    const/16 v1, 0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3379
    :goto_0
    return-void

    .line 3374
    :cond_1
    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3375
    const/16 v1, 0x15

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 3377
    :cond_2
    const/16 v1, 0x13

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public areasUpdated(Ljava/util/Enumeration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "areas":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 4100
    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4102
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4104
    .local v0, "area":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->areaThatSetBackAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->areaThatSetBackAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4106
    iput-object v2, p0, Lnet/veritran/VTCommonActivity;->areaThatSetBackAction:Ljava/lang/String;

    .line 4107
    iput-object v2, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    .line 4112
    .end local v0    # "area":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public cleanSessionDialogs()V
    .locals 4

    .prologue
    .line 4128
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 4129
    .local v0, "dialogs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4130
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4131
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/component/VTPopupComponent;

    .line 4132
    .local v2, "popup":Lnet/veritran/component/VTPopupComponent;
    const-string v3, "CLOSE"

    invoke-virtual {v2, v3}, Lnet/veritran/component/VTPopupComponent;->executeEvent(Ljava/lang/String;)Z

    goto :goto_0

    .line 4134
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "popup":Lnet/veritran/component/VTPopupComponent;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v14, 0x15

    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 4028
    if-nez p1, :cond_1

    .line 4030
    const-string v9, "Activity"

    const-string v11, "Touch event null!!!"

    invoke-static {v9, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 4082
    :cond_0
    :goto_0
    return v3

    .line 4036
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    .line 4037
    .local v5, "v":Landroid/view/View;
    invoke-super/range {p0 .. p1}, Lnet/veritran/VTAbstractActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 4039
    .local v3, "ret":Z
    instance-of v9, v5, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    .line 4040
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    .line 4041
    .local v6, "w":Landroid/view/View;
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 4042
    .local v4, "scrcoords":[I
    invoke-virtual {v6, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4043
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    const/4 v11, 0x0

    aget v11, v4, v11

    int-to-float v11, v11

    sub-float v7, v9, v11

    .line 4044
    .local v7, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v9, v11

    const/4 v11, 0x1

    aget v11, v4, v11

    int-to-float v11, v11

    sub-float v8, v9, v11

    .line 4046
    .local v8, "y":F
    const-string v9, "Activity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Touch event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rect "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " coords "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v13, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-ltz v9, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-gez v9, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-ltz v9, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_3

    .line 4054
    :cond_2
    move-object v0, v5

    check-cast v0, Landroid/widget/EditText;

    move-object v9, v0

    const/16 v11, 0x13

    invoke-virtual {v9, v11}, Landroid/widget/EditText;->setGravity(I)V

    .line 4056
    const-string v9, "input_method"

    invoke-virtual {p0, v9}, Lnet/veritran/VTCommonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4057
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4059
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 4060
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 4061
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 4063
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4079
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "ret":Z
    .end local v4    # "scrcoords":[I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "w":Landroid/view/View;
    .end local v7    # "x":F
    .end local v8    # "y":F
    :catch_0
    move-exception v2

    .line 4081
    .local v2, "npe":Ljava/lang/NullPointerException;
    const-string v9, "Activity"

    const-string v11, "Touch event not null but NullPointerException!!!!"

    invoke-static {v9, v11}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 4082
    goto/16 :goto_0

    .line 4066
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    .restart local v3    # "ret":Z
    .restart local v4    # "scrcoords":[I
    .restart local v5    # "v":Landroid/view/View;
    .restart local v6    # "w":Landroid/view/View;
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_3
    :try_start_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v14, :cond_4

    move-object v0, v5

    check-cast v0, Landroid/widget/EditText;

    move-object v9, v0

    .line 4067
    invoke-virtual {v9}, Landroid/widget/EditText;->getGravity()I

    move-result v9

    const/16 v11, 0x11

    if-eq v9, v11, :cond_5

    move-object v0, v5

    check-cast v0, Landroid/widget/EditText;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/EditText;->getGravity()I

    move-result v9

    if-eq v9, v13, :cond_5

    :cond_4
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v14, :cond_0

    move-object v0, v5

    check-cast v0, Landroid/widget/EditText;

    move-object v9, v0

    .line 4068
    invoke-virtual {v9}, Landroid/widget/EditText;->getGravity()I

    move-result v9

    if-ne v9, v14, :cond_0

    .line 4069
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    if-ne v5, v6, :cond_0

    .line 4072
    check-cast v5, Landroid/widget/EditText;

    .end local v5    # "v":Landroid/view/View;
    const/16 v9, 0x13

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setGravity(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public drawVisualArea(Lnet/veritran/component/VTVisualArea;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V
    .locals 6
    .param p1, "va"    # Lnet/veritran/component/VTVisualArea;
    .param p2, "components"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    .prologue
    const/4 v5, 0x0

    .line 1062
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1063
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->currentPopulatingVisualArea:Ljava/lang/String;

    .line 1064
    invoke-virtual {p2, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    .line 1066
    .local v1, "cvc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :try_start_0
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->clone()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1075
    :goto_1
    invoke-virtual {p0, v1, v5, v5}, Lnet/veritran/VTCommonActivity;->getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 1077
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lnet/veritran/component/VTSlidePanel;

    if-nez v3, :cond_0

    .line 1091
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getView()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1093
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/veritran/component/VTUIComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1095
    :cond_0
    instance-of v3, v0, Lnet/veritran/component/VTSlidePanel;

    if-eqz v3, :cond_1

    .line 1096
    invoke-virtual {p1}, Lnet/veritran/component/VTVisualArea;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/veritran/component/VTUIComponent;->setVisualAreaName(Ljava/lang/String;)V

    .line 1097
    check-cast v0, Lnet/veritran/component/VTSlidePanel;

    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    invoke-static {v0}, Lnet/veritran/VTSlidingPanelManager;->addSlidingPanel(Lnet/veritran/component/VTSlidePanel;)V

    .line 1062
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1067
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1100
    .end local v1    # "cvc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    :cond_2
    return-void
.end method

.method public evaluateNextActionForStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;Lnet/veritran/function/exception/VTFunctionException;)Ljava/lang/String;
    .locals 12
    .param p1, "currentStep"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;
    .param p2, "e"    # Lnet/veritran/function/exception/VTFunctionException;

    .prologue
    const/4 v11, 0x0

    .line 2134
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") e is not null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") e.getType():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2139
    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2138
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") e.getDescription():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2141
    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2140
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") e.getCode():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2143
    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2142
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getOnError()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    move-result-object v4

    .line 2145
    .local v4, "onError":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;
    if-eqz v4, :cond_5

    .line 2147
    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;->getErrors()Ljava/util/List;

    move-result-object v2

    .line 2148
    .local v2, "listError":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;

    .line 2149
    .local v1, "err":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;
    const-string v8, "VTCommonActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evaluateNextActionForStep("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") err.getType():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2150
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2149
    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const-string v8, "VTCommonActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evaluateNextActionForStep("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") err.getCode():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2152
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2151
    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    const-string v8, "VTCommonActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evaluateNextActionForStep("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") err.getNext():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2154
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getNext()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2153
    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getType()Ljava/lang/String;

    move-result-object v6

    .line 2156
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 2157
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;->getNext()Ljava/lang/String;

    move-result-object v3

    .line 2158
    .local v3, "next":Ljava/lang/String;
    const-string v8, "error"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    const-string v8, "event"

    .line 2159
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    :cond_2
    const-string v8, "local"

    .line 2160
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 2161
    :cond_3
    invoke-virtual {p2}, Lnet/veritran/function/exception/VTFunctionException;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2162
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2164
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") goto processAction("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2162
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    invoke-static {v3, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 2168
    .local v5, "parsedNextAction":Ljava/lang/String;
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2170
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") parsedAction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2168
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "err":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;
    .end local v2    # "listError":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;>;"
    .end local v3    # "next":Ljava/lang/String;
    .end local v5    # "parsedNextAction":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 2176
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "err":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;
    .restart local v2    # "listError":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;>;"
    .restart local v3    # "next":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_4
    const-string v8, "ZZZ"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2177
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ZZZ -> evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2178
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") goto processAction("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2177
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    invoke-static {v3, v11}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    .line 2181
    .restart local v5    # "parsedNextAction":Ljava/lang/String;
    const-string v7, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextActionForStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2183
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") parsedAction="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2181
    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2193
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "err":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;
    .end local v2    # "listError":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepError;>;"
    .end local v3    # "next":Ljava/lang/String;
    .end local v5    # "parsedNextAction":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getOnError()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStepOnError;->getNext()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public evaluateNextStep(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;)I
    .locals 10
    .param p1, "currentStep"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    .prologue
    const/4 v7, -0x1

    .line 2107
    const-string v6, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v0

    .line 2109
    .local v0, "currentStepId":I
    const-string v6, "VTCommonActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "evaluateNextStep("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getNextStep()Ljava/lang/String;

    move-result-object v3

    .line 2111
    .local v3, "nextStep":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 2112
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2113
    :cond_0
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getProcess()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;->getSteps()Ljava/util/List;

    move-result-object v5

    .line 2114
    .local v5, "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 2115
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v4

    .line 2116
    .local v4, "stepId":I
    if-ne v0, v4, :cond_2

    .line 2117
    add-int/lit8 v2, v1, 0x1

    .line 2118
    .local v2, "nextI":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 2119
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;->getStepId()I

    move-result v6

    .line 2128
    .end local v1    # "i":I
    .end local v2    # "nextI":I
    .end local v4    # "stepId":I
    .end local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;>;"
    :goto_1
    return v6

    .restart local v1    # "i":I
    .restart local v2    # "nextI":I
    .restart local v4    # "stepId":I
    .restart local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;>;"
    :cond_1
    move v6, v7

    .line 2121
    goto :goto_1

    .line 2114
    .end local v2    # "nextI":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2126
    .end local v1    # "i":I
    .end local v4    # "stepId":I
    .end local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;>;"
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessStep;>;"
    :cond_4
    move v6, v7

    .line 2128
    goto :goto_1
.end method

.method public finishedAsyncTask()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    if-eqz v0, :cond_0

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    .line 384
    return-void
.end method

.method public getBundleState(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "componentId"    # Ljava/lang/String;

    .prologue
    .line 4116
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 4118
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4120
    const-string v1, "VTCommonActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bundle contains componentId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4124
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentScreenCapture(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # Ljava/lang/String;

    .prologue
    .line 2880
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2882
    const/4 v1, 0x0

    .line 2887
    :goto_0
    return-object v1

    .line 2885
    :cond_0
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 2887
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v0, p2}, Lnet/veritran/component/VTUIComponent;->drawToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 2584
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public getUIComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;
    .locals 2
    .param p1, "c"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;
    .param p2, "ara"    # Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;
    .param p3, "parent"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 1105
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/VTCommonActivity;->getUIComponent2(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;Lnet/veritran/component/VTUIComponent;)Lnet/veritran/component/VTUIComponent;

    move-result-object v0

    .line 1107
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/utils/VTAndroidUtils;->addUIComponentToView(Lnet/veritran/component/VTUIComponent;Landroid/view/View;)V

    .line 1112
    :cond_0
    return-object v0
.end method

.method public getVisualAreaScreenCapture(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "visualArea"    # Ljava/lang/String;

    .prologue
    .line 2850
    const/4 v2, 0x0

    .line 2851
    .local v2, "viewToCapture":Landroid/view/View;
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2853
    :cond_0
    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    invoke-virtual {v4}, Lnet/veritran/component/VTVisualArea;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 2866
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 2868
    const/4 v0, 0x0

    .line 2875
    :goto_1
    return-object v0

    .line 2857
    :cond_2
    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    invoke-virtual {p0, p1, v4}, Lnet/veritran/VTCommonActivity;->searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;

    move-result-object v3

    .line 2860
    .local v3, "vtVisualArea":Lnet/veritran/component/VTVisualArea;
    if-eqz v3, :cond_1

    .line 2862
    invoke-virtual {v3}, Lnet/veritran/component/VTVisualArea;->getView()Landroid/widget/LinearLayout;

    move-result-object v2

    goto :goto_0

    .line 2871
    .end local v3    # "vtVisualArea":Lnet/veritran/component/VTVisualArea;
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2872
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2871
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2873
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2874
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 757
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->isConfigurableSplash:Z

    if-eqz v0, :cond_1

    .line 759
    const-string v0, "__progress"

    const-string v1, "HIDE"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    const-string v0, "__status"

    const-string v1, "HIDE"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 761
    const-string v0, "__progress_image"

    const-string v1, "HIDE"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->prgProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public navigationStart()V
    .locals 6

    .prologue
    .line 773
    :try_start_0
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    iget-object v3, v3, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/NavigationManager;->setCurrentView(Lnet/veritran/vtuserapplication/model/NavigationView;)V

    .line 774
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    iget-object v3, v3, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/NavigationManager;->defineNextNavigationViewPatch(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/NavigationView;

    move-result-object v2

    .line 775
    .local v2, "nv":Lnet/veritran/vtuserapplication/model/NavigationView;
    if-nez v2, :cond_0

    .line 788
    .end local v2    # "nv":Lnet/veritran/vtuserapplication/model/NavigationView;
    :goto_0
    return-void

    .line 778
    .restart local v2    # "nv":Lnet/veritran/vtuserapplication/model/NavigationView;
    :cond_0
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    iget-object v3, v3, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    invoke-virtual {v3, v2}, Lnet/veritran/vtuserapplication/model/NavigationManager;->setCurrentView(Lnet/veritran/vtuserapplication/model/NavigationView;)V

    .line 779
    const-string v3, "VTCommonActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lnet/veritran/VTCommonActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 782
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getCurrentState()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lnet/veritran/VTCommonActivity;->changeState(ILandroid/content/Intent;)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "nv":Lnet/veritran/vtuserapplication/model/NavigationView;
    :catch_0
    move-exception v0

    .line 786
    .local v0, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->restartApplication()V

    goto :goto_0
.end method

.method public nuevoRequestForViewUpdate(Ljava/lang/String;)V
    .locals 8
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 3236
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/veritran/VTCommonActivity;->waitExpired:Z

    .line 3238
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    if-eqz v3, :cond_0

    .line 3239
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    .line 3240
    .local v1, "moribund":Ljava/lang/Thread;
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    .line 3241
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3244
    .end local v1    # "moribund":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getShowWaitDialogAfterMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 3245
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MyHandlerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    .line 3246
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 3247
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->waitDialogHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3248
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lnet/veritran/VTCommonActivity$9;

    invoke-direct {v3, p0}, Lnet/veritran/VTCommonActivity$9;-><init>(Lnet/veritran/VTCommonActivity;)V

    .line 3265
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->getShowWaitDialogAfterMillis()J

    move-result-wide v4

    .line 3248
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3268
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-virtual {p0, p1}, Lnet/veritran/VTCommonActivity;->requestForViewUpdate(Ljava/lang/String;)V

    .line 3269
    sget-object v3, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 3270
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    new-instance v3, Lnet/veritran/VTCommonActivity$10;

    invoke-direct {v3, p0}, Lnet/veritran/VTCommonActivity$10;-><init>(Lnet/veritran/VTCommonActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3291
    const-string v3, "VTCommonActivity"

    const-string v4, "RequestForViewUpdate::onPostExecute "

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1565
    move v1, p1

    .line 1566
    .local v1, "reqCode":I
    move v2, p2

    .line 1567
    .local v2, "resCode":I
    move-object v0, p3

    .line 1568
    .local v0, "intent":Landroid/content/Intent;
    invoke-super {p0, p1, p2, p3}, Lnet/veritran/VTAbstractActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1569
    new-instance v3, Lnet/veritran/VTCommonActivity$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lnet/veritran/VTCommonActivity$5;-><init>(Lnet/veritran/VTCommonActivity;IILandroid/content/Intent;)V

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->postOnActivityResult:Ljava/lang/Runnable;

    .line 1687
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 3951
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3953
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 3958
    :cond_0
    :goto_0
    return-void

    .line 3955
    :cond_1
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->exitAllowed:Z

    if-eqz v0, :cond_0

    .line 3956
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->askAndCloseApplication()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1}, Lnet/veritran/VTAbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    :try_start_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const-string v4, "PATTERNSPLASH"

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->pattern:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    const-string v3, "VTCommonActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate --> FreeMem  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " K /"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lnet/veritran/VTCommonActivity;->maxMemory:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "VTCommonActivity"

    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "VTCommonActivity"

    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->isTaskRoot()Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 308
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->finish()V

    .line 342
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VTCommonActivity"

    const-string v4, "Catched exception empty (fortify)"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 316
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    const-string v3, "VTCommonActivity"

    const-string v4, "From notification"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/veritran/VTUserApplicationSmart;->wasStartedByPushNotification(Z)V

    .line 320
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->tryStartPushViewAlreadyStarted()V

    .line 325
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "net.veritran.listItem"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "net.veritran.listItem"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    :cond_2
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    .line 333
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    if-eqz v3, :cond_3

    .line 337
    :cond_3
    invoke-static {p0}, Lnet/veritran/vtuserapplication/model/NavigationManager;->addListener(Lnet/veritran/vtuserapplication/model/NavigationListener;)V

    .line 339
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->mHandlePushReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "__PROJECT_NAME__.PUSH_NOTIFICATION_BROADCAST_CONSTANT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lnet/veritran/VTCommonActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/veritran/VTUserApplicationSmart;->setBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 3191
    invoke-super {p0, p1, p2, p3}, Lnet/veritran/VTAbstractActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3192
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->contextMenus:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    move-object v2, p2

    .line 3193
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3195
    const/4 v3, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v0, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3197
    :cond_0
    iput-object p2, p0, Lnet/veritran/VTCommonActivity;->currentContextMenuViewLauncher:Landroid/view/View;

    .line 3199
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->mHandlePushReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lnet/veritran/VTCommonActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    invoke-super {p0}, Lnet/veritran/VTAbstractActivity;->onDestroy()V

    .line 357
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "VTCommonActivity"

    const-string v2, "Catched exception empty (fortify)"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 3212
    const-string v3, "VTCommonActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemSelected("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3214
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3212
    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 3216
    .local v1, "i":I
    iget-object v3, p0, Lnet/veritran/VTCommonActivity;->contextMenus:Ljava/util/Hashtable;

    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->currentContextMenuViewLauncher:Landroid/view/View;

    .line 3217
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3219
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    :try_start_0
    const-string v4, "VTCommonActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemSelected("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "); id:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3221
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";next="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3222
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v6, "next"

    invoke-virtual {v3, v6}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3219
    invoke-static {v4, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3226
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/veritran/VTCommonActivity;->currentContextMenuViewLauncher:Landroid/view/View;

    .line 3227
    const/4 v3, 0x1

    return v3

    .line 3223
    :catch_0
    move-exception v0

    .line 3224
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VTCommonActivity"

    const-string v4, "Catched exception empty (fortify)"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3203
    const-string v0, "VTCommonActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->currentContextMenuViewLauncher:Landroid/view/View;

    .line 3207
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 4137
    invoke-super {p0, p1, p2, p3}, Lnet/veritran/VTAbstractActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 4139
    const/4 v1, 0x1

    .line 4140
    .local v1, "resultsBool":Z
    array-length v2, p3

    if-eqz v2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 4141
    :cond_0
    const/4 v1, 0x0

    .line 4143
    :cond_1
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget v0, p3, v2

    .line 4144
    .local v0, "grantResult":I
    if-eqz v0, :cond_2

    .line 4145
    const/4 v1, 0x0

    .line 4143
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4149
    .end local v0    # "grantResult":I
    :cond_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

    if-eqz v2, :cond_5

    .line 4151
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

    sget-object v3, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    invoke-interface {v2, v3}, Lnet/veritran/vtuserapplication/model/PermissionListener;->notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V

    .line 4158
    :cond_4
    :goto_1
    return-void

    .line 4153
    :cond_5
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

    if-eqz v2, :cond_4

    .line 4155
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

    sget-object v3, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    invoke-interface {v2, v3}, Lnet/veritran/vtuserapplication/model/PermissionListener;->notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2993
    invoke-super {p0, p1}, Lnet/veritran/VTAbstractActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2995
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/VTUserApplicationSmart;->setBundle(Landroid/os/Bundle;)V

    .line 2996
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 3048
    invoke-super {p0}, Lnet/veritran/VTAbstractActivity;->onResume()V

    .line 3050
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->postOnActivityResult:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/veritran/VTCommonActivity;->postOnActivityResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3052
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->postOnActivityResult:Ljava/lang/Runnable;

    .line 3054
    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    if-eqz v0, :cond_0

    .line 366
    :cond_0
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2983
    invoke-super {p0, p1}, Lnet/veritran/VTAbstractActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2985
    invoke-direct {p0, p1}, Lnet/veritran/VTCommonActivity;->storeToBundle(Landroid/os/Bundle;)V

    .line 2987
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/VTUserApplicationSmart;->setBundle(Landroid/os/Bundle;)V

    .line 2988
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 3025
    invoke-static {}, Lnet/veritran/VTSlidingPanelManager;->removeAll()V

    .line 3026
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->removeComponentsFromSession()V

    .line 3028
    invoke-super {p0}, Lnet/veritran/VTAbstractActivity;->onStart()V

    .line 3032
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2910
    invoke-super {p0}, Lnet/veritran/VTAbstractActivity;->onStop()V

    .line 2912
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2914
    .local v0, "outState":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lnet/veritran/VTCommonActivity;->storeToBundle(Landroid/os/Bundle;)V

    .line 2916
    invoke-static {}, Lnet/veritran/component/VTProgressBar;->stopAllProgressBars()V

    .line 2920
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 637
    iget-boolean v4, p0, Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z

    if-eqz v4, :cond_3

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 642
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 643
    .local v2, "y":F
    invoke-direct {p0, v1, v2}, Lnet/veritran/VTCommonActivity;->calculateNumber(FF)I

    move-result v0

    .line 644
    .local v0, "number":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lnet/veritran/VTCommonActivity;->inputPattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/veritran/VTCommonActivity;->inputPattern:Ljava/lang/String;

    .line 646
    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->pattern:Ljava/lang/String;

    iget-object v5, p0, Lnet/veritran/VTCommonActivity;->inputPattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->pattern:Ljava/lang/String;

    iget-object v5, p0, Lnet/veritran/VTCommonActivity;->inputPattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 649
    invoke-virtual {p0}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Adivinaste el codigo secreto!!"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 650
    iput-boolean v6, p0, Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z

    .line 651
    iput-boolean v3, p0, Lnet/veritran/VTCommonActivity;->isMatchPattern:Z

    .line 652
    iput-boolean v3, p0, Lnet/veritran/VTCommonActivity;->exitAllowed:Z

    .line 654
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->initConfigContentView()V

    .line 667
    .end local v0    # "number":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_0
    :goto_0
    return v3

    .line 657
    .restart local v0    # "number":I
    .restart local v1    # "x":F
    .restart local v2    # "y":F
    :cond_1
    iput-boolean v3, p0, Lnet/veritran/VTCommonActivity;->isInitPattern:Z

    goto :goto_0

    .line 661
    :cond_2
    iput-boolean v6, p0, Lnet/veritran/VTCommonActivity;->enableSecretScreen:Z

    goto :goto_0

    .line 667
    .end local v0    # "number":I
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_3
    invoke-super {p0, p1}, Lnet/veritran/VTAbstractActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected populateActivity()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->setupCurrentState()V

    .line 419
    return-void
.end method

.method public processAction(Ljava/lang/String;)V
    .locals 34
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 1758
    if-eqz p1, :cond_0

    :try_start_0
    const-string v28, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1759
    :cond_0
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->enableMainView()V

    .line 2038
    :cond_1
    :goto_0
    return-void

    .line 1763
    :cond_2
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->disableMainView()V

    .line 1765
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "processAction next="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "processAction -->"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " FreeMem "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 1767
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v30

    const-wide/16 v32, 0x400

    div-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " K /"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/VTCommonActivity;->maxMemory:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1766
    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/vtuserapplication/model/Model;->restartSessionTimeout()V

    .line 1771
    const/16 v28, 0x0

    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1772
    .local v23, "prefix":Ljava/lang/String;
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "processAction prefix="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    const-string v28, "_APPUPDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1775
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VTUserApplicationSmart;->updateApplicationSendToStore()V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2035
    .end local v23    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2036
    .local v9, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VTUserApplicationSmart;->restartApplication()V

    goto/16 :goto_0

    .line 1778
    .end local v9    # "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    .restart local v23    # "prefix":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v28, "PM016"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1779
    const-string p1, "_CONFUPDATE"

    .line 1781
    :cond_4
    const-string v28, "_CONFUPDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1783
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v28

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lnet/veritran/VTUserApplicationSmart;->isUpdatingConfiguration:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1789
    const-string v28, "VTCommonActivity"

    const-string v29, "CONFUPDATE: Configuration already updating. It won\'t update twice!!!"

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1794
    :cond_5
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->isUpdatingConfiguration:Z

    .line 1796
    const-string v28, "VTCommonActivity"

    const-string v29, "CONFUPDATE: It will update the configuration!!!"

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/vtuserapplication/model/Model;->setModeNewConfigurationToDownload()V

    .line 1803
    new-instance v28, Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;

    invoke-direct/range {v28 .. v28}, Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;-><init>()V

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/vtuserapplication/processes/ProcessVTServiceConfigurationUpdate;->execute()V

    goto/16 :goto_0

    .line 1807
    :cond_6
    const-string v28, "V"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1810
    invoke-virtual/range {p0 .. p1}, Lnet/veritran/VTCommonActivity;->nuevoRequestForViewUpdate(Ljava/lang/String;)V

    .line 2032
    :cond_7
    :goto_1
    const-string v28, "P"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    .line 2033
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->enableMainView()V

    goto/16 :goto_0

    .line 1811
    :cond_8
    const-string v28, "P"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1813
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->tryLockProcessHelper()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v28, v0

    .line 1815
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getProcessResult(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    move-result-object v24

    .line 1816
    .local v24, "proc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->setProcess(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;)V

    .line 1817
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->vtService:Lnet/veritran/vtuserapplication/processes/ProcessVTService;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->setVTService(Lnet/veritran/vtuserapplication/processes/ProcessVTService;)V

    .line 1818
    invoke-static {}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->getInstance()Lnet/veritran/vtuserapplication/model/ProcessHelper;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lnet/veritran/vtuserapplication/model/ProcessHelper;->run()V

    goto :goto_1

    .line 1820
    .end local v24    # "proc":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    :cond_9
    const-string v28, "E"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1834
    const-string v28, "("

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1835
    .local v13, "indexStartEventName":I
    const-string v28, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1837
    .local v12, "indexEndEventName":I
    if-lez v13, :cond_7

    if-lez v12, :cond_7

    .line 1838
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1839
    .local v5, "componentId":Ljava/lang/String;
    add-int/lit8 v28, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1842
    .local v8, "eventName":Ljava/lang/String;
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Sending event: \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\" to componentId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const/4 v11, 0x0

    .line 1846
    .local v11, "hasNextExecution":Z
    const/16 v18, 0x0

    .line 1847
    .local v18, "nextExecutionOnlyIfNotAvailable":Z
    const-string v16, ""

    .line 1849
    .local v16, "nextExecution":Ljava/lang/String;
    const-string v28, "|"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 1851
    .local v17, "nextExecutionIndex":I
    const-string v28, "_"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v19

    .line 1855
    .local v19, "nextIfNotAvailableExecutionIndex":I
    if-lez v17, :cond_d

    if-ltz v19, :cond_a

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 1858
    :cond_a
    const/4 v11, 0x1

    .line 1859
    const/16 v18, 0x0

    .line 1861
    const-string v28, "|"

    .line 1862
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int v28, v28, v17

    .line 1861
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1874
    :cond_b
    :goto_2
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Next execution: ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] hasNextExecution: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " - nextExecutionOnlyIfNotAvailable: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    const/16 v25, 0x0

    .line 1882
    .local v25, "resultExecution":Z
    const-string v28, "__SYSTEM__"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1884
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lnet/veritran/VTCommonActivity;->sendMessageToSystem(Ljava/lang/String;)Z

    move-result v25

    .line 1897
    :goto_3
    if-eqz v11, :cond_7

    .line 1898
    if-eqz v18, :cond_c

    if-nez v25, :cond_7

    .line 1900
    :cond_c
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Will process Action: ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1863
    .end local v25    # "resultExecution":Z
    :cond_d
    if-lez v19, :cond_b

    .line 1865
    const/4 v11, 0x1

    .line 1866
    const/16 v18, 0x1

    .line 1868
    const-string v28, "_"

    .line 1871
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int v28, v28, v19

    .line 1869
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 1886
    .restart local v25    # "resultExecution":Z
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lnet/veritran/VTCommonActivity;->sendMessageToCallApi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1890
    const/16 v25, 0x1

    goto :goto_3

    .line 1894
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    goto :goto_3

    .line 1906
    .end local v5    # "componentId":Ljava/lang/String;
    .end local v8    # "eventName":Ljava/lang/String;
    .end local v11    # "hasNextExecution":Z
    .end local v12    # "indexEndEventName":I
    .end local v13    # "indexStartEventName":I
    .end local v16    # "nextExecution":Ljava/lang/String;
    .end local v17    # "nextExecutionIndex":I
    .end local v18    # "nextExecutionOnlyIfNotAvailable":Z
    .end local v19    # "nextIfNotAvailableExecutionIndex":I
    .end local v25    # "resultExecution":Z
    :cond_10
    const-string v28, "G"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 1916
    const-string v28, "("

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1917
    .restart local v13    # "indexStartEventName":I
    const-string v28, ")"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1919
    .restart local v12    # "indexEndEventName":I
    if-lez v13, :cond_7

    if-lez v12, :cond_7

    .line 1920
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1921
    .local v10, "groupId":Ljava/lang/String;
    add-int/lit8 v28, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1924
    .restart local v8    # "eventName":Ljava/lang/String;
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Sending event: \""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\" to groupId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const/4 v11, 0x0

    .line 1928
    .restart local v11    # "hasNextExecution":Z
    const-string v16, ""

    .line 1930
    .restart local v16    # "nextExecution":Ljava/lang/String;
    const-string v28, "|"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v17

    .line 1933
    .restart local v17    # "nextExecutionIndex":I
    if-lez v17, :cond_11

    .line 1935
    const/4 v11, 0x1

    .line 1937
    const-string v28, "|"

    .line 1938
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int v28, v28, v17

    .line 1937
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1941
    :cond_11
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Next execution: ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] hasNextExecution: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8}, Lnet/veritran/VTCommonActivity;->sendMessageToGroup(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    if-eqz v11, :cond_7

    .line 1947
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Will process Action: ["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1953
    .end local v8    # "eventName":Ljava/lang/String;
    .end local v10    # "groupId":Ljava/lang/String;
    .end local v11    # "hasNextExecution":Z
    .end local v12    # "indexEndEventName":I
    .end local v13    # "indexStartEventName":I
    .end local v16    # "nextExecution":Ljava/lang/String;
    .end local v17    # "nextExecutionIndex":I
    :cond_12
    const-string v28, "mailto"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1954
    new-instance v7, Landroid/content/Intent;

    const-string v28, "android.intent.action.SEND"

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v7, "emailIntent":Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v14

    .line 1959
    .local v14, "mailto":Landroid/net/MailTo;
    const-string v28, "plain/text"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1960
    const-string v28, "android.intent.extra.EMAIL"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    .line 1961
    invoke-virtual {v14}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 1960
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1962
    const-string v28, "android.intent.extra.SUBJECT"

    invoke-virtual {v14}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1963
    const-string v28, "android.intent.extra.TEXT"

    invoke-virtual {v14}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1964
    const-string v28, "Enviar e-mail..."

    move-object/from16 v0, v28

    invoke-static {v7, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1966
    .end local v7    # "emailIntent":Landroid/content/Intent;
    .end local v14    # "mailto":Landroid/net/MailTo;
    :cond_13
    const-string v28, "openurl:"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 1967
    const-string v28, "openurl:"

    .line 1968
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    .line 1967
    invoke-static/range {v28 .. v28}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1969
    .local v27, "url":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v28, "android.intent.action.VIEW"

    .line 1970
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1971
    .local v4, "browserIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/veritran/VTCommonActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1972
    .end local v4    # "browserIntent":Landroid/content/Intent;
    .end local v27    # "url":Ljava/lang/String;
    :cond_14
    const-string v28, "U"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 1973
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1974
    .local v6, "dialogId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lnet/veritran/component/VTPopupComponent;

    .line 1975
    .local v22, "popupComponent":Lnet/veritran/component/VTPopupComponent;
    if-eqz v22, :cond_15

    .line 1976
    invoke-virtual/range {v22 .. v22}, Lnet/veritran/component/VTPopupComponent;->init()V

    .line 1977
    invoke-virtual/range {v22 .. v22}, Lnet/veritran/component/VTPopupComponent;->getVTPopup()Lnet/veritran/component/VTPopup;

    move-result-object v21

    .line 1978
    .local v21, "popup":Lnet/veritran/component/VTPopup;
    if-eqz v21, :cond_16

    .line 1979
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/component/VTPopup;->show()V

    .line 1985
    .end local v21    # "popup":Lnet/veritran/component/VTPopup;
    :cond_15
    :goto_4
    invoke-static {v6}, Lnet/veritran/VTSlidingPanelManager;->getSlidingPanel(Ljava/lang/String;)Lnet/veritran/component/VTSlidePanel;

    move-result-object v26

    .line 1986
    .local v26, "slide":Lnet/veritran/component/VTSlidePanel;
    if-eqz v26, :cond_17

    .line 1987
    invoke-virtual/range {v26 .. v26}, Lnet/veritran/component/VTSlidePanel;->openSlide()V

    goto/16 :goto_1

    .line 1981
    .end local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    .restart local v21    # "popup":Lnet/veritran/component/VTPopup;
    :cond_16
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No popup to show: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1989
    .end local v21    # "popup":Lnet/veritran/component/VTPopup;
    .restart local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    :cond_17
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No slide to open: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1992
    .end local v6    # "dialogId":Ljava/lang/String;
    .end local v22    # "popupComponent":Lnet/veritran/component/VTPopupComponent;
    .end local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    :cond_18
    const-string v28, "C"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1993
    const-string v28, "|"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 1995
    .local v20, "pipeIndex":I
    if-gez v20, :cond_1a

    .line 1996
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2000
    .restart local v6    # "dialogId":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lnet/veritran/component/VTPopupComponent;

    .line 2001
    .restart local v22    # "popupComponent":Lnet/veritran/component/VTPopupComponent;
    if-eqz v22, :cond_19

    .line 2002
    invoke-virtual/range {v22 .. v22}, Lnet/veritran/component/VTPopupComponent;->getVTPopup()Lnet/veritran/component/VTPopup;

    move-result-object v21

    .line 2003
    .restart local v21    # "popup":Lnet/veritran/component/VTPopup;
    if-eqz v21, :cond_1b

    .line 2004
    invoke-virtual/range {v21 .. v21}, Lnet/veritran/component/VTPopup;->cancel()V

    .line 2010
    .end local v21    # "popup":Lnet/veritran/component/VTPopup;
    :cond_19
    :goto_6
    invoke-static {v6}, Lnet/veritran/VTSlidingPanelManager;->getSlidingPanel(Ljava/lang/String;)Lnet/veritran/component/VTSlidePanel;

    move-result-object v26

    .line 2011
    .restart local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    if-eqz v26, :cond_1c

    .line 2012
    invoke-virtual/range {v26 .. v26}, Lnet/veritran/component/VTSlidePanel;->closeSlide()V

    .line 2017
    :goto_7
    if-lez v20, :cond_7

    .line 2018
    add-int/lit8 v28, v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2019
    .local v15, "nextAction":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1998
    .end local v6    # "dialogId":Ljava/lang/String;
    .end local v15    # "nextAction":Ljava/lang/String;
    .end local v22    # "popupComponent":Lnet/veritran/component/VTPopupComponent;
    .end local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    :cond_1a
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "dialogId":Ljava/lang/String;
    goto :goto_5

    .line 2006
    .restart local v21    # "popup":Lnet/veritran/component/VTPopup;
    .restart local v22    # "popupComponent":Lnet/veritran/component/VTPopupComponent;
    :cond_1b
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No popup to close: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2014
    .end local v21    # "popup":Lnet/veritran/component/VTPopup;
    .restart local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    :cond_1c
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No slide to open: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2021
    .end local v6    # "dialogId":Ljava/lang/String;
    .end local v20    # "pipeIndex":I
    .end local v22    # "popupComponent":Lnet/veritran/component/VTPopupComponent;
    .end local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    :cond_1d
    const-string v28, "T"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 2022
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2024
    .restart local v6    # "dialogId":Ljava/lang/String;
    invoke-static {v6}, Lnet/veritran/VTSlidingPanelManager;->getSlidingPanel(Ljava/lang/String;)Lnet/veritran/component/VTSlidePanel;

    move-result-object v26

    .line 2025
    .restart local v26    # "slide":Lnet/veritran/component/VTSlidePanel;
    if-eqz v26, :cond_1e

    .line 2026
    invoke-virtual/range {v26 .. v26}, Lnet/veritran/component/VTSlidePanel;->toggleSlide()V

    goto/16 :goto_1

    .line 2028
    :cond_1e
    const-string v28, "VTCommonActivity"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No slide to open: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public processOnClickButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1411
    const-string v0, "VTCommonActivity"

    const-string v1, "onclick!"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    return-void
.end method

.method public processVTService(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;)V
    .locals 1
    .param p1, "func"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/function/exception/VTFunctionException;
        }
    .end annotation

    .prologue
    .line 2198
    new-instance v0, Lnet/veritran/function/VTServiceFunction;

    invoke-direct {v0, p1}, Lnet/veritran/function/VTServiceFunction;-><init>(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcessFunctionVTService;)V

    .line 2199
    .local v0, "ff":Lnet/veritran/function/VTServiceFunction;
    invoke-virtual {v0}, Lnet/veritran/function/VTServiceFunction;->execute()V

    .line 2200
    return-void
.end method

.method public requestForViewUpdate(Ljava/lang/String;)V
    .locals 36
    .param p1, "nextState"    # Ljava/lang/String;

    .prologue
    .line 791
    const-string v32, "VTCommonActivity"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "requestForViewUpdate("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    move-object/from16 v32, v0

    .line 795
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/NavigationManager;->defineNextNavigationViewPatch(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/NavigationView;

    move-result-object v19

    .line 797
    .local v19, "next":Lnet/veritran/vtuserapplication/model/NavigationView;
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v20

    .line 799
    .local v20, "nextView":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lnet/veritran/VTCommonActivity$InputsByArea;->removeAll()V

    .line 801
    if-eqz v20, :cond_4

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lnet/veritran/component/VTVisualArea;->removeAllViews()V

    .line 808
    :cond_0
    invoke-static {}, Lnet/veritran/component/VTProgressBar;->stopAllProgressBars()V

    .line 810
    invoke-static {}, Lnet/veritran/component/VTListCarouselComponent;->stopAllCarouselTransitions()V

    .line 812
    invoke-static {}, Lnet/veritran/VTSlidingPanelManager;->removeAll()V

    .line 813
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->removeComponentsFromSession()V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    move-result-object v30

    .line 824
    .local v30, "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v32, v0

    .line 825
    invoke-virtual/range {v30 .. v30}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getLayoutName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    .line 826
    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    .line 827
    .local v15, "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    invoke-virtual/range {v30 .. v30}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getThemeName()Ljava/lang/String;

    move-result-object v23

    .line 828
    .local v23, "sThemeName":Ljava/lang/String;
    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v23

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->getTheme(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    move-result-object v26

    .line 830
    .local v26, "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    invoke-static/range {v26 .. v26}, Lnet/veritran/ThemeManager;->setTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;)V

    .line 831
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getCurrentOrientation()I

    move-result v5

    .line 833
    .local v5, "androidOrientation":I
    const/16 v32, 0x2

    move/from16 v0, v32

    if-ne v5, v0, :cond_2

    .line 834
    const/4 v9, 0x1

    .line 839
    .local v9, "currentOrientatation":I
    :goto_0
    sget-object v32, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v32 .. v32}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 840
    new-instance v32, Lnet/veritran/component/VTVisualArea;

    invoke-direct/range {v32 .. v32}, Lnet/veritran/component/VTVisualArea;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    .line 845
    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getOrientationLandscape()Ljava/lang/String;

    move-result-object v21

    .line 846
    .local v21, "orientation":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTVisualArea;->setOrientation(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setMeasuredWidth(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenHeight()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setMeasuredHeight(I)V

    .line 851
    const-string v32, "H"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 853
    sget-object v32, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 859
    :goto_1
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 861
    .local v17, "lp":Landroid/view/ViewGroup$LayoutParams;
    sget-object v32, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 863
    sget-object v32, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    invoke-virtual {v15}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setName(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    sget-object v33, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setView(Landroid/widget/LinearLayout;)V

    .line 869
    invoke-virtual {v15, v9}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;->getElementsByOrientation(I)Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v33, v0

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->processVisualAreas(Ljava/util/List;Lnet/veritran/component/VTVisualArea;)V

    .line 871
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v28, "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    move/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->getVisualAreasList(Lnet/veritran/component/VTVisualArea;Ljava/util/List;Z)V

    .line 876
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_1
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_7

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 878
    .local v27, "va":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getConfigurationVisualAreaInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    move-result-object v29

    .line 881
    .local v29, "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;

    move-result-object v31

    .line 887
    .local v31, "visualArea":Lnet/veritran/component/VTVisualArea;
    if-eqz v29, :cond_1

    .line 888
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/NavigationView;->getSequenceForArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 889
    .local v24, "sequence":Ljava/lang/String;
    const-string v33, "VTCommonActivity"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Sequence for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " is "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v33

    .line 896
    invoke-virtual/range {v30 .. v30}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getViewid()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    .line 895
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, v24

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getSerializedVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v10

    .line 899
    .local v10, "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Lnet/veritran/VTCommonActivity;->drawVisualArea(Lnet/veritran/component/VTVisualArea;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 994
    .end local v5    # "androidOrientation":I
    .end local v9    # "currentOrientatation":I
    .end local v10    # "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v15    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .end local v17    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "next":Lnet/veritran/vtuserapplication/model/NavigationView;
    .end local v20    # "nextView":Ljava/lang/String;
    .end local v21    # "orientation":Ljava/lang/String;
    .end local v23    # "sThemeName":Ljava/lang/String;
    .end local v24    # "sequence":Ljava/lang/String;
    .end local v26    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .end local v27    # "va":Ljava/lang/String;
    .end local v28    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    .end local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    .end local v31    # "visualArea":Lnet/veritran/component/VTVisualArea;
    :catch_0
    move-exception v14

    .line 996
    .local v14, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;->getPrintableError()Ljava/lang/String;

    move-result-object v22

    .line 998
    .local v22, "printError":Ljava/lang/String;
    if-eqz v22, :cond_8

    .line 1000
    const/16 v13, 0x133

    .line 1003
    .local v13, "errorId":I
    invoke-static {v13}, Lnet/veritran/vtuserapplication/model/Errors;->getErrorDescription(I)Ljava/lang/String;

    move-result-object v12

    .line 1005
    .local v12, "errorDescription":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ") "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1008
    .local v18, "message":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1010
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1012
    const-string v32, "OK"

    new-instance v33, Lnet/veritran/VTCommonActivity$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/VTCommonActivity$4;-><init>(Lnet/veritran/VTCommonActivity;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1025
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    .line 1033
    .end local v8    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "errorDescription":Ljava/lang/String;
    .end local v13    # "errorId":I
    .end local v14    # "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    .end local v18    # "message":Ljava/lang/String;
    .end local v22    # "printError":Ljava/lang/String;
    :goto_3
    return-void

    .line 836
    .restart local v5    # "androidOrientation":I
    .restart local v15    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .restart local v19    # "next":Lnet/veritran/vtuserapplication/model/NavigationView;
    .restart local v20    # "nextView":Ljava/lang/String;
    .restart local v23    # "sThemeName":Ljava/lang/String;
    .restart local v26    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .restart local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "currentOrientatation":I
    goto/16 :goto_0

    .line 856
    .restart local v21    # "orientation":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v32, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V
    :try_end_1
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 913
    .end local v5    # "androidOrientation":I
    .end local v9    # "currentOrientatation":I
    .end local v15    # "layouts":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;
    .end local v21    # "orientation":Ljava/lang/String;
    .end local v23    # "sThemeName":Ljava/lang/String;
    .end local v26    # "theme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .end local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    move-object/from16 v33, v0

    .line 914
    invoke-virtual/range {v33 .. v33}, Lnet/veritran/vtuserapplication/model/NavigationManager;->getCurrentView()Lnet/veritran/vtuserapplication/model/NavigationView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    .line 913
    invoke-virtual/range {v32 .. v34}, Lnet/veritran/VTUserApplicationSmart;->getView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    move-result-object v30

    .line 916
    .restart local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .restart local v28    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Lnet/veritran/vtuserapplication/model/NavigationView;->getAreas()Ljava/util/Enumeration;

    move-result-object v7

    .line 919
    .local v7, "areas":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v32

    if-eqz v32, :cond_5

    .line 920
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 923
    .local v6, "area":Ljava/lang/String;
    invoke-static {v6}, Lnet/veritran/component/VTProgressBar;->stopAllProgressBarsFromVisualArea(Ljava/lang/String;)V

    .line 925
    invoke-static {v6}, Lnet/veritran/component/VTListCarouselComponent;->stopAllCarouselTransitionsFromVisualArea(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lnet/veritran/VTCommonActivity$InputsByArea;->remove(Ljava/lang/String;)V

    .line 931
    invoke-static {v6}, Lnet/veritran/VTSlidingPanelManager;->removeSlidingPanelsFromVisualArea(Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lnet/veritran/VTCommonActivity;->removeComponentsFromSessionInVisualArea(Ljava/lang/String;)V
    :try_end_2
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 984
    .end local v6    # "area":Ljava/lang/String;
    .end local v7    # "areas":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v28    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :catch_1
    move-exception v14

    .line 985
    .restart local v14    # "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    :try_start_3
    throw v14
    :try_end_3
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_3 .. :try_end_3} :catch_0

    .line 942
    .end local v14    # "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    .restart local v7    # "areas":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v28    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setMeasuredWidth(I)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    invoke-static {}, Lnet/veritran/VTCommonActivity;->getScreenHeight()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setMeasuredHeight(I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v32, v0

    sget-object v33, Lnet/veritran/VTCommonActivity;->bodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual/range {v32 .. v33}, Lnet/veritran/component/VTVisualArea;->setView(Landroid/widget/LinearLayout;)V

    .line 959
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_6
    :goto_5
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_7

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 961
    .restart local v27    # "va":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getConfigurationVisualAreaInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    move-result-object v29

    .line 963
    .restart local v29    # "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->mainVisualArea:Lnet/veritran/component/VTVisualArea;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTCommonActivity;->searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;

    move-result-object v31

    .line 965
    .restart local v31    # "visualArea":Lnet/veritran/component/VTVisualArea;
    invoke-virtual/range {v31 .. v31}, Lnet/veritran/component/VTVisualArea;->getView()Landroid/widget/LinearLayout;

    move-result-object v16

    .line 969
    .local v16, "ll":Landroid/widget/LinearLayout;
    if-eqz v29, :cond_6

    .line 970
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/NavigationView;->getSequenceForArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 975
    .local v25, "sq":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v33

    .line 977
    invoke-virtual/range {v30 .. v30}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getViewid()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    .line 976
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->getSerializedVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    move-result-object v10

    .line 979
    .restart local v10    # "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    invoke-virtual/range {v31 .. v31}, Lnet/veritran/component/VTVisualArea;->removeAllViews()V

    .line 981
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Lnet/veritran/VTCommonActivity;->drawVisualArea(Lnet/veritran/component/VTVisualArea;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V
    :try_end_4
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 986
    .end local v7    # "areas":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v10    # "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .end local v16    # "ll":Landroid/widget/LinearLayout;
    .end local v25    # "sq":Ljava/lang/String;
    .end local v27    # "va":Ljava/lang/String;
    .end local v28    # "vaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "varea":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;
    .end local v30    # "view":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    .end local v31    # "visualArea":Lnet/veritran/component/VTVisualArea;
    :catch_2
    move-exception v11

    .line 988
    .local v11, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v32, "VTCommonActivity"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error handling new View: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/VTCommonActivity;->openDialogs:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/VTCommonActivity;->openDialogs:I

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/NavigationManager;->applyNavigationView(Lnet/veritran/vtuserapplication/model/NavigationView;)V
    :try_end_5
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 1029
    .end local v19    # "next":Lnet/veritran/vtuserapplication/model/NavigationView;
    .end local v20    # "nextView":Ljava/lang/String;
    .restart local v14    # "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    .restart local v22    # "printError":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lnet/veritran/VTUserApplicationSmart;->restartApplication()V

    goto/16 :goto_3
.end method

.method public searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;
    .locals 9
    .param p1, "searchName"    # Ljava/lang/String;
    .param p2, "searchFrom"    # Lnet/veritran/component/VTVisualArea;

    .prologue
    const/4 v5, 0x0

    .line 1452
    const/4 v2, 0x0

    .line 1454
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lnet/veritran/component/VTVisualArea;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1458
    const-string v6, "VTCommonActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SearchForVA "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; current "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1460
    const-string v5, "VTCommonActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SearchForVA "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " find!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    .end local p2    # "searchFrom":Lnet/veritran/component/VTVisualArea;
    :goto_0
    return-object p2

    .line 1455
    .restart local p2    # "searchFrom":Lnet/veritran/component/VTVisualArea;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object p2, v5

    .line 1456
    goto :goto_0

    .line 1463
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Lnet/veritran/component/VTVisualArea;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1464
    invoke-virtual {p2, v1}, Lnet/veritran/component/VTVisualArea;->getChildAt(I)Lnet/veritran/component/VTUIComponent;

    move-result-object v4

    check-cast v4, Lnet/veritran/component/VTVisualArea;

    .line 1467
    .local v4, "s":Lnet/veritran/component/VTVisualArea;
    invoke-virtual {p0, p1, v4}, Lnet/veritran/VTCommonActivity;->searchForVisualArea(Ljava/lang/String;Lnet/veritran/component/VTVisualArea;)Lnet/veritran/component/VTVisualArea;

    move-result-object v3

    .line 1468
    .local v3, "res":Lnet/veritran/component/VTVisualArea;
    if-eqz v3, :cond_1

    move-object p2, v3

    .line 1469
    goto :goto_0

    .line 1463
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "res":Lnet/veritran/component/VTVisualArea;
    .end local v4    # "s":Lnet/veritran/component/VTVisualArea;
    :cond_2
    move-object p2, v5

    .line 1472
    goto :goto_0
.end method

.method public sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "messageName"    # Ljava/lang/String;

    .prologue
    .line 2083
    const/4 v1, 0x0

    .line 2085
    .local v1, "resultExecution":Z
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    .line 2086
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 2087
    .local v0, "compToSendEvent":Lnet/veritran/component/VTUIComponent;
    if-nez v0, :cond_0

    .line 2088
    iget-object v2, p0, Lnet/veritran/VTCommonActivity;->sessionDialogs:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "compToSendEvent":Lnet/veritran/component/VTUIComponent;
    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 2091
    .restart local v0    # "compToSendEvent":Lnet/veritran/component/VTUIComponent;
    :cond_0
    if-eqz v0, :cond_1

    .line 2092
    const-string v2, "VTCommonActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compToSendEvent not null. Sending event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v0, p2}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    move-result v1

    .line 2099
    const-string v2, "VTCommonActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compToSendEvent not null. Result execution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    :cond_1
    return v1
.end method

.method public sendMessageToGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "messageName"    # Ljava/lang/String;

    .prologue
    .line 2041
    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    .line 2042
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 2043
    .local v3, "eComponentsIds":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2044
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2045
    .local v2, "componentId":Ljava/lang/String;
    iget-object v4, p0, Lnet/veritran/VTCommonActivity;->sessionComponents:Ljava/util/Hashtable;

    .line 2046
    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 2048
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    if-eqz v0, :cond_0

    .line 2049
    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 2051
    .local v1, "componentGroupId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    .line 2052
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    .line 2055
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2054
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2056
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2058
    const-string v4, "VTCommonActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "component to send event not null. Sending event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    invoke-virtual {v0, p2}, Lnet/veritran/component/VTUIComponent;->executeEvent(Ljava/lang/String;)Z

    .line 2062
    const-string v4, "VTCommonActivity"

    const-string v5, "component to send event not null. Execution completed"

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2068
    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    .end local v1    # "componentGroupId":Ljava/lang/String;
    .end local v2    # "componentId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sendMessageToSystem(Ljava/lang/String;)Z
    .locals 1
    .param p1, "messageName"    # Ljava/lang/String;

    .prologue
    .line 2072
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    invoke-direct {p0}, Lnet/veritran/VTCommonActivity;->askAndCloseApplication()V

    .line 2075
    const/4 v0, 0x1

    .line 2078
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setApplicationVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 716
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->isConfigurableSplash:Z

    if-eqz v0, :cond_1

    .line 718
    const-string v0, "__version"

    const-string v1, "SHOW"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 719
    const-string v0, "__version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTEXT~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtVersion:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtVersion:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBackAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "backAction"    # Ljava/lang/String;
    .param p2, "area"    # Ljava/lang/String;

    .prologue
    .line 4088
    iput-object p1, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    .line 4089
    iput-object p2, p0, Lnet/veritran/VTCommonActivity;->areaThatSetBackAction:Ljava/lang/String;

    .line 4090
    return-void
.end method

.method public setCurrentPermissionListener(Lnet/veritran/vtuserapplication/model/PermissionListener;)V
    .locals 0
    .param p1, "listenerPermission"    # Lnet/veritran/vtuserapplication/model/PermissionListener;

    .prologue
    .line 4162
    iput-object p1, p0, Lnet/veritran/VTCommonActivity;->listenerPermission:Lnet/veritran/vtuserapplication/model/PermissionListener;

    .line 4163
    return-void
.end method

.method public setProgressMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 729
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->isConfigurableSplash:Z

    if-eqz v0, :cond_1

    .line 731
    const-string v0, "__status"

    const-string v1, "SHOW"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 732
    const-string v0, "__progress_image"

    const-string v1, "SHOW"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 733
    const-string v0, "__status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTEXT~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->prgProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgressPercentage(I)V
    .locals 4
    .param p1, "percentage"    # I

    .prologue
    const/4 v3, 0x0

    .line 743
    iget-boolean v0, p0, Lnet/veritran/VTCommonActivity;->isConfigurableSplash:Z

    if-eqz v0, :cond_1

    .line 745
    const-string v0, "__progress"

    const-string v1, "SHOW"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 746
    const-string v0, "__progress_image"

    const-string v1, "SHOW"

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 747
    const-string v0, "__progress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTEXT~("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/veritran/VTCommonActivity;->sendMessageToComponent(Ljava/lang/String;Ljava/lang/String;)Z

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->txtProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lnet/veritran/VTCommonActivity;->prgProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public validateForm(Ljava/lang/String;)Z
    .locals 67
    .param p1, "formId"    # Ljava/lang/String;

    .prologue
    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v62, v0

    # getter for: Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;
    invoke-static/range {v62 .. v62}, Lnet/veritran/VTCommonActivity$InputsByArea;->access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v17

    .line 3394
    .local v17, "eArea":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const/16 v40, 0x1

    .line 3395
    .local v40, "procesarOk":Z
    new-instance v22, Ljava/util/Hashtable;

    invoke-direct/range {v22 .. v22}, Ljava/util/Hashtable;-><init>()V

    .line 3396
    .local v22, "errorMessages":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v54, Ljava/util/TreeMap;

    invoke-direct/range {v54 .. v54}, Ljava/util/TreeMap;-><init>()V

    .line 3400
    .local v54, "tabIndexMessages":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz p1, :cond_14

    .line 3401
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 3402
    .local v8, "dictCheckboxTargetvarChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 3403
    .local v9, "dictCheckboxTargetvarName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 3405
    .local v10, "dictCheckboxTargetvarTabIndex":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 3406
    .local v11, "dictRadioGroupChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 3407
    .local v12, "dictRadioGroupName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 3409
    .local v13, "dictRadioGroupTabIndex":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    .line 3411
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v63

    const-string v64, "$string"

    const-string v65, "appCheckInputData"

    invoke-virtual/range {v63 .. v65}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 3409
    invoke-virtual/range {v62 .. v63}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 3414
    .local v37, "msgCheckField":Ljava/lang/String;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_10

    .line 3415
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3416
    .local v4, "area":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v62, v0

    # getter for: Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;
    invoke-static/range {v62 .. v62}, Lnet/veritran/VTCommonActivity$InputsByArea;->access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/List;

    .line 3417
    .local v30, "inputByArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :cond_1
    :goto_0
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_0

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/veritran/VisualInputComponent;

    .line 3418
    .local v28, "i":Lnet/veritran/VisualInputComponent;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getFormId()Ljava/lang/String;

    move-result-object v31

    .line 3419
    .local v31, "inputFormId":Ljava/lang/String;
    if-eqz v31, :cond_1

    .line 3420
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1

    .line 3421
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v62

    packed-switch v62, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3425
    :pswitch_1
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "displayName"

    .line 3426
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    const/16 v64, 0x0

    .line 3424
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v39

    .line 3428
    .local v39, "name":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "targetvar"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3429
    .local v46, "register":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 3431
    .local v47, "registerAsInt":I
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v59

    check-cast v59, Lnet/veritran/component/view/VTTextInterface;

    .line 3433
    .local v59, "view":Lnet/veritran/component/view/VTTextInterface;
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/VTInputText;

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/component/VTInputText;->getEnteredText()Ljava/lang/String;

    move-result-object v52

    .line 3435
    .local v52, "storeValue":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "inputmsg"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3436
    .local v32, "inputMsg":Ljava/lang/String;
    if-nez v32, :cond_2

    .line 3437
    move-object/from16 v32, v37

    .line 3438
    :cond_2
    const/16 v62, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v32

    .line 3440
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "required"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 3441
    .local v50, "required":Ljava/lang/String;
    if-nez v50, :cond_3

    .line 3442
    const-string v50, "false"

    .line 3443
    :cond_3
    const/16 v62, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v50

    .line 3444
    const-string v62, "false"

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v62

    if-nez v62, :cond_6

    .line 3445
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/VTInputText;

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/component/VTInputText;->enteredTextIsEmpty()Z

    move-result v62

    if-eqz v62, :cond_6

    .line 3449
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    .line 3451
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v64

    const-string v65, "$string"

    const-string v66, "appFieldRequired"

    invoke-virtual/range {v64 .. v66}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Integer;->intValue()I

    move-result v64

    .line 3449
    move-object/from16 v0, v62

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v62

    const-string v64, "__1__"

    .line 3452
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3453
    .local v20, "errorMessage":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/VTUserApplicationSmart;->getTextRequired()Ljava/lang/String;

    move-result-object v56

    .line 3454
    .local v56, "text_required":Ljava/lang/String;
    if-eqz v56, :cond_4

    const-string v62, "INLINE"

    move-object/from16 v0, v56

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_5

    .line 3455
    :cond_4
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/view/VTTextInterface;

    .line 3456
    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 3459
    :cond_5
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3460
    .local v51, "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3462
    .local v53, "tabIndex":Ljava/lang/Integer;
    :try_start_0
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v53

    .line 3466
    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v39

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3470
    const/16 v40, 0x0

    .line 3474
    .end local v20    # "errorMessage":Ljava/lang/String;
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .end local v56    # "text_required":Ljava/lang/String;
    :cond_6
    const/16 v36, 0x0

    .line 3476
    .local v36, "message":Ljava/lang/String;
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/VTInputText;

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/component/VTInputText;->enteredTextIsEmpty()Z

    move-result v62

    if-nez v62, :cond_7

    .line 3478
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/VTInputText;

    move-object/from16 v0, v62

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTInputText;->validateTextLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3481
    :cond_7
    if-eqz v36, :cond_8

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v62

    if-lez v62, :cond_8

    .line 3487
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/view/VTTextInterface;

    move-object/from16 v0, v62

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 3489
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3490
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3492
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :try_start_1
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v53

    .line 3496
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v39

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3500
    const/16 v40, 0x0

    .line 3508
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    :cond_8
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/VTInputText;

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/component/VTInputText;->enteredTextIsEmpty()Z

    move-result v62

    if-nez v62, :cond_1

    .line 3510
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "regexp"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3511
    .local v45, "regexp":Ljava/lang/String;
    if-eqz v45, :cond_1

    .line 3512
    const/16 v62, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v45

    .line 3513
    const/16 v35, 0x0

    .line 3515
    .local v35, "match":Z
    :try_start_2
    new-instance v41, Lme/regexp/RE;

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lme/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 3516
    .local v41, "r":Lme/regexp/RE;
    const-string v62, "VTCommonActivity"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "regexp="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ";val:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lme/regexp/RE;->match(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v35

    .line 3526
    .end local v41    # "r":Lme/regexp/RE;
    :goto_3
    if-nez v35, :cond_1

    .line 3527
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/view/VTTextInterface;

    .line 3528
    move-object/from16 v0, v62

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 3530
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3531
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3533
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :try_start_3
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v53

    .line 3537
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3539
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v39

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3541
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 3463
    .end local v35    # "match":Z
    .end local v36    # "message":Ljava/lang/String;
    .end local v45    # "regexp":Ljava/lang/String;
    .restart local v20    # "errorMessage":Ljava/lang/String;
    .restart local v56    # "text_required":Ljava/lang/String;
    :catch_0
    move-exception v25

    .line 3464
    .local v25, "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto/16 :goto_1

    .line 3493
    .end local v20    # "errorMessage":Ljava/lang/String;
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v56    # "text_required":Ljava/lang/String;
    .restart local v36    # "message":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 3494
    .restart local v25    # "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto/16 :goto_2

    .line 3519
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .restart local v35    # "match":Z
    .restart local v45    # "regexp":Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 3521
    .local v23, "ex":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v35

    goto :goto_3

    .line 3522
    :catch_3
    move-exception v24

    .line 3523
    .local v24, "ex2":Ljava/lang/Exception;
    const/16 v35, 0x0

    goto :goto_3

    .line 3534
    .end local v23    # "ex":Ljava/lang/Exception;
    .end local v24    # "ex2":Ljava/lang/Exception;
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :catch_4
    move-exception v25

    .line 3535
    .restart local v25    # "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto :goto_4

    .line 3548
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v32    # "inputMsg":Ljava/lang/String;
    .end local v35    # "match":Z
    .end local v36    # "message":Ljava/lang/String;
    .end local v39    # "name":Ljava/lang/String;
    .end local v45    # "regexp":Ljava/lang/String;
    .end local v46    # "register":Ljava/lang/String;
    .end local v47    # "registerAsInt":I
    .end local v50    # "required":Ljava/lang/String;
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v52    # "storeValue":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .end local v59    # "view":Lnet/veritran/component/view/VTTextInterface;
    :pswitch_2
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "displayName"

    .line 3549
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    const/16 v64, 0x0

    .line 3547
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v39

    .line 3551
    .restart local v39    # "name":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "targetvar"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3552
    .restart local v46    # "register":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 3554
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    .line 3555
    .local v27, "hview":Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;
    move-object/from16 v0, v27

    iget-object v0, v0, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 3558
    .restart local v52    # "storeValue":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "inputmsg"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 3559
    .restart local v32    # "inputMsg":Ljava/lang/String;
    if-nez v32, :cond_9

    .line 3560
    move-object/from16 v32, v37

    .line 3561
    :cond_9
    const/16 v62, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v32

    .line 3563
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "required"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 3564
    .restart local v50    # "required":Ljava/lang/String;
    if-nez v50, :cond_a

    .line 3565
    const-string v50, "false"

    .line 3566
    :cond_a
    const/16 v62, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v50

    .line 3567
    const-string v62, "false"

    move-object/from16 v0, v50

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v62

    if-nez v62, :cond_d

    .line 3568
    move-object/from16 v0, v27

    iget-object v0, v0, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->text:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v62

    if-nez v62, :cond_d

    .line 3572
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    .line 3574
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v64

    const-string v65, "$string"

    const-string v66, "appFieldRequired"

    invoke-virtual/range {v64 .. v66}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Integer;->intValue()I

    move-result v64

    .line 3572
    move-object/from16 v0, v62

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v62

    const-string v64, "__1__"

    .line 3575
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3576
    .restart local v20    # "errorMessage":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/VTUserApplicationSmart;->getTextRequired()Ljava/lang/String;

    move-result-object v56

    .line 3577
    .restart local v56    # "text_required":Ljava/lang/String;
    if-eqz v56, :cond_b

    const-string v62, "INLINE"

    move-object/from16 v0, v56

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_c

    .line 3578
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/view/VTTextInterface;

    .line 3579
    move-object/from16 v0, v62

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTTextInterface;->setError(Ljava/lang/CharSequence;)V

    .line 3582
    :cond_c
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3583
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3585
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :try_start_5
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v53

    .line 3590
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v39

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3592
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3593
    const/16 v40, 0x0

    .line 3602
    .end local v20    # "errorMessage":Ljava/lang/String;
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .end local v56    # "text_required":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v27

    iget-object v0, v0, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->text:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v62

    if-eqz v62, :cond_1

    .line 3604
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "regexp"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3605
    .restart local v45    # "regexp":Ljava/lang/String;
    if-eqz v45, :cond_1

    .line 3606
    const/16 v62, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v45

    .line 3607
    const/16 v35, 0x0

    .line 3609
    .restart local v35    # "match":Z
    :try_start_6
    new-instance v41, Lme/regexp/RE;

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lme/regexp/RE;-><init>(Ljava/lang/String;)V

    .line 3610
    .restart local v41    # "r":Lme/regexp/RE;
    const-string v62, "VTCommonActivity"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "regexp="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, ";val:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lme/regexp/RE;->match(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result v35

    .line 3620
    .end local v41    # "r":Lme/regexp/RE;
    :goto_6
    if-nez v35, :cond_1

    .line 3624
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3625
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3627
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :try_start_7
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v53

    .line 3631
    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3633
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v39

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3635
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 3586
    .end local v35    # "match":Z
    .end local v45    # "regexp":Ljava/lang/String;
    .restart local v20    # "errorMessage":Ljava/lang/String;
    .restart local v56    # "text_required":Ljava/lang/String;
    :catch_5
    move-exception v25

    .line 3587
    .restart local v25    # "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto/16 :goto_5

    .line 3613
    .end local v20    # "errorMessage":Ljava/lang/String;
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .end local v56    # "text_required":Ljava/lang/String;
    .restart local v35    # "match":Z
    .restart local v45    # "regexp":Ljava/lang/String;
    :catch_6
    move-exception v23

    .line 3615
    .restart local v23    # "ex":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result v35

    goto :goto_6

    .line 3616
    :catch_7
    move-exception v24

    .line 3617
    .restart local v24    # "ex2":Ljava/lang/Exception;
    const/16 v35, 0x0

    goto :goto_6

    .line 3628
    .end local v23    # "ex":Ljava/lang/Exception;
    .end local v24    # "ex2":Ljava/lang/Exception;
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :catch_8
    move-exception v25

    .line 3629
    .restart local v25    # "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto :goto_7

    .line 3641
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v27    # "hview":Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;
    .end local v32    # "inputMsg":Ljava/lang/String;
    .end local v35    # "match":Z
    .end local v39    # "name":Ljava/lang/String;
    .end local v45    # "regexp":Ljava/lang/String;
    .end local v46    # "register":Ljava/lang/String;
    .end local v47    # "registerAsInt":I
    .end local v50    # "required":Ljava/lang/String;
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v52    # "storeValue":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    :pswitch_3
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v60

    check-cast v60, Lnet/veritran/component/VTCheckboxComponent;

    .line 3643
    .local v60, "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    if-eqz v60, :cond_1

    .line 3644
    invoke-virtual/range {v60 .. v60}, Lnet/veritran/component/VTCheckboxComponent;->getDisplayName()Ljava/lang/String;

    move-result-object v39

    .line 3645
    .restart local v39    # "name":Ljava/lang/String;
    invoke-virtual/range {v60 .. v60}, Lnet/veritran/component/VTCheckboxComponent;->getTargetvar()Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .line 3646
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/veritran/component/view/VTUICompoundButtonView;

    .line 3648
    .local v6, "chkView":Lnet/veritran/component/view/VTUICompoundButtonView;
    invoke-virtual/range {v60 .. v60}, Lnet/veritran/component/VTCheckboxComponent;->getRequired()Ljava/lang/Boolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-eqz v62, :cond_1

    .line 3649
    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v55

    .line 3650
    .local v55, "targetvar":Ljava/lang/String;
    const-string v62, ""

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_1

    .line 3651
    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_e

    .line 3652
    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-nez v62, :cond_1

    invoke-interface {v6}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v62

    if-eqz v62, :cond_1

    .line 3653
    :cond_e
    invoke-interface {v6}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    move-object/from16 v0, v55

    move-object/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3658
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3660
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :try_start_9
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v53

    .line 3664
    :goto_8
    move-object/from16 v0, v55

    move-object/from16 v1, v53

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3661
    :catch_9
    move-exception v25

    .line 3662
    .restart local v25    # "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto :goto_8

    .line 3671
    .end local v6    # "chkView":Lnet/veritran/component/view/VTUICompoundButtonView;
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v39    # "name":Ljava/lang/String;
    .end local v47    # "registerAsInt":I
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .end local v55    # "targetvar":Ljava/lang/String;
    .end local v60    # "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    :pswitch_4
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v61

    check-cast v61, Lnet/veritran/component/VTRadioButtonComponent;

    .line 3673
    .local v61, "vtRadio":Lnet/veritran/component/VTRadioButtonComponent;
    if-eqz v61, :cond_1

    .line 3674
    invoke-virtual/range {v61 .. v61}, Lnet/veritran/component/VTRadioButtonComponent;->getDisplayName()Ljava/lang/String;

    move-result-object v39

    .line 3675
    .restart local v39    # "name":Ljava/lang/String;
    invoke-virtual/range {v61 .. v61}, Lnet/veritran/component/VTRadioButtonComponent;->getTargetvar()Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .line 3677
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v43

    check-cast v43, Lnet/veritran/component/view/VTRadioButtonComponentView;

    .line 3679
    .local v43, "rbView":Lnet/veritran/component/view/VTRadioButtonComponentView;
    invoke-virtual/range {v61 .. v61}, Lnet/veritran/component/VTRadioButtonComponent;->getRequired()Ljava/lang/Boolean;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-eqz v62, :cond_1

    .line 3680
    invoke-virtual/range {v61 .. v61}, Lnet/veritran/component/VTRadioButtonComponent;->getRadioGroup()Ljava/lang/String;

    move-result-object v42

    .line 3681
    .local v42, "radioGroup":Ljava/lang/String;
    const-string v62, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_1

    .line 3682
    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_f

    .line 3683
    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-nez v62, :cond_1

    invoke-virtual/range {v43 .. v43}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v62

    if-eqz v62, :cond_1

    .line 3684
    :cond_f
    invoke-virtual/range {v43 .. v43}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v62

    move-object/from16 v0, v42

    move-object/from16 v1, v62

    invoke-virtual {v11, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v12, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3688
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;

    const-string v64, "tabindex"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 3689
    .restart local v51    # "sTabIndex":Ljava/lang/String;
    const/16 v53, 0x0

    .line 3691
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    :try_start_a
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v53

    .line 3695
    :goto_9
    move-object/from16 v0, v42

    move-object/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3692
    :catch_a
    move-exception v25

    .line 3693
    .restart local v25    # "exx":Ljava/lang/Exception;
    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    goto :goto_9

    .line 3706
    .end local v4    # "area":Ljava/lang/String;
    .end local v25    # "exx":Ljava/lang/Exception;
    .end local v28    # "i":Lnet/veritran/VisualInputComponent;
    .end local v30    # "inputByArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    .end local v31    # "inputFormId":Ljava/lang/String;
    .end local v39    # "name":Ljava/lang/String;
    .end local v42    # "radioGroup":Ljava/lang/String;
    .end local v43    # "rbView":Lnet/veritran/component/view/VTRadioButtonComponentView;
    .end local v47    # "registerAsInt":I
    .end local v51    # "sTabIndex":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    .end local v61    # "vtRadio":Lnet/veritran/component/VTRadioButtonComponent;
    :cond_10
    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v18

    .line 3707
    .local v18, "eCheckboxGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_11
    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_12

    .line 3708
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3709
    .local v5, "checkboxGroup":Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-nez v62, :cond_11

    .line 3713
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    .line 3715
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v63

    const-string v64, "$string"

    const-string v65, "appFieldRequired"

    invoke-virtual/range {v63 .. v65}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 3713
    invoke-virtual/range {v62 .. v63}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v63

    const-string v64, "__1__"

    .line 3716
    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3718
    .restart local v20    # "errorMessage":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3720
    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v0, v22

    move-object/from16 v1, v62

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    const/16 v40, 0x0

    goto :goto_a

    .line 3726
    .end local v5    # "checkboxGroup":Ljava/lang/String;
    .end local v20    # "errorMessage":Ljava/lang/String;
    :cond_12
    invoke-virtual {v11}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v19

    .line 3727
    .local v19, "eRadioGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_13
    :goto_b
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_14

    .line 3728
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 3729
    .restart local v42    # "radioGroup":Ljava/lang/String;
    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Boolean;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v62

    if-nez v62, :cond_13

    .line 3733
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    .line 3735
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v63

    const-string v64, "$string"

    const-string v65, "appFieldRequired"

    invoke-virtual/range {v63 .. v65}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 3733
    invoke-virtual/range {v62 .. v63}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v63

    const-string v64, "__1__"

    .line 3736
    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3738
    .restart local v20    # "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v42

    invoke-virtual {v13, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lnet/veritran/VTCommonActivity;->addElementToTabIndex(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 3740
    move-object/from16 v0, v42

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v0, v22

    move-object/from16 v1, v62

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    const/16 v40, 0x0

    goto :goto_b

    .line 3746
    .end local v8    # "dictCheckboxTargetvarChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v9    # "dictCheckboxTargetvarName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "dictCheckboxTargetvarTabIndex":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "dictRadioGroupChecked":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v12    # "dictRadioGroupName":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "dictRadioGroupTabIndex":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "eCheckboxGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v19    # "eRadioGroups":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v20    # "errorMessage":Ljava/lang/String;
    .end local v37    # "msgCheckField":Ljava/lang/String;
    .end local v42    # "radioGroup":Ljava/lang/String;
    :cond_14
    if-nez v40, :cond_1c

    .line 3747
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v62

    const-string v63, "$string"

    const-string v64, "sys0002"

    invoke-virtual/range {v62 .. v64}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 3748
    .local v38, "msnSys0002":Ljava/lang/String;
    const-string v58, ""

    .line 3749
    .local v58, "toastText":Ljava/lang/String;
    const-string v62, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v62

    if-nez v62, :cond_15

    .line 3751
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    .line 3753
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v63

    const-string v64, "$string"

    const-string v65, "sys0002"

    invoke-virtual/range {v63 .. v65}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 3751
    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->getString(I)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, ":\n"

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 3757
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v62

    .line 3759
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v63

    const-string v64, "$string"

    const-string v65, "appFieldErrorPrefix"

    invoke-virtual/range {v63 .. v65}, Lnet/veritran/VTUserApplicationSmart;->getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v63

    .line 3757
    invoke-virtual/range {v62 .. v63}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3761
    .local v21, "errorMessagePrefix":Ljava/lang/String;
    if-nez v21, :cond_16

    .line 3762
    const-string v21, ""

    .line 3763
    :cond_16
    invoke-virtual/range {v54 .. v54}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v62

    invoke-interface/range {v62 .. v62}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "it":Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_18

    .line 3764
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    .line 3765
    .restart local v53    # "tabIndex":Ljava/lang/Integer;
    move-object/from16 v0, v54

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/util/ArrayList;

    invoke-virtual/range {v62 .. v62}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :goto_c
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_17

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 3766
    .local v26, "fieldNameWithError":Ljava/lang/String;
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v64, "__1__"

    move-object/from16 v0, v21

    move-object/from16 v1, v64

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 3767
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 3768
    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v62

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v64, "\n"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 3769
    goto :goto_c

    .line 3771
    .end local v26    # "fieldNameWithError":Ljava/lang/String;
    .end local v53    # "tabIndex":Ljava/lang/Integer;
    :cond_18
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/VTUserApplicationSmart;->getTextRequired()Ljava/lang/String;

    move-result-object v56

    .line 3772
    .restart local v56    # "text_required":Ljava/lang/String;
    if-eqz v56, :cond_19

    const-string v62, "TOAST"

    move-object/from16 v0, v56

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_1a

    .line 3773
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTCommonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v62

    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, v58

    move/from16 v2, v63

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v57

    .line 3775
    .local v57, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v57 .. v57}, Landroid/widget/Toast;->show()V

    .line 3777
    .end local v57    # "toast":Landroid/widget/Toast;
    :cond_1a
    new-instance v22, Ljava/util/Hashtable;

    .end local v22    # "errorMessages":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/Hashtable;-><init>()V

    .line 3779
    .restart local v22    # "errorMessages":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v54, Ljava/util/TreeMap;

    .end local v54    # "tabIndexMessages":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct/range {v54 .. v54}, Ljava/util/TreeMap;-><init>()V

    .line 3945
    .end local v21    # "errorMessagePrefix":Ljava/lang/String;
    .end local v33    # "it":Ljava/util/Iterator;
    .end local v38    # "msnSys0002":Ljava/lang/String;
    .end local v56    # "text_required":Ljava/lang/String;
    .end local v58    # "toastText":Ljava/lang/String;
    .restart local v54    # "tabIndexMessages":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1b
    return v40

    .line 3781
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v62, v0

    # getter for: Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;
    invoke-static/range {v62 .. v62}, Lnet/veritran/VTCommonActivity$InputsByArea;->access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v17

    .line 3782
    if-eqz p1, :cond_1b

    .line 3783
    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    .line 3784
    .local v14, "dictRegisterMultipleValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 3785
    .local v34, "listRegistersToClean":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    .line 3787
    .local v15, "dictRegisterMultipleValuesCounter":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1d
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_22

    .line 3788
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3789
    .restart local v4    # "area":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTCommonActivity;->inputs:Lnet/veritran/VTCommonActivity$InputsByArea;

    move-object/from16 v62, v0

    # getter for: Lnet/veritran/VTCommonActivity$InputsByArea;->data:Ljava/util/Hashtable;
    invoke-static/range {v62 .. v62}, Lnet/veritran/VTCommonActivity$InputsByArea;->access$800(Lnet/veritran/VTCommonActivity$InputsByArea;)Ljava/util/Hashtable;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/List;

    .line 3790
    .restart local v30    # "inputByArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :cond_1e
    :goto_d
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_1d

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lnet/veritran/VisualInputComponent;

    .line 3791
    .restart local v28    # "i":Lnet/veritran/VisualInputComponent;
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getFormId()Ljava/lang/String;

    move-result-object v31

    .line 3792
    .restart local v31    # "inputFormId":Ljava/lang/String;
    if-eqz v31, :cond_1e

    .line 3793
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_1e

    .line 3797
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getType()I

    move-result v62

    packed-switch v62, :pswitch_data_1

    :pswitch_5
    goto :goto_d

    .line 3801
    :pswitch_6
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v64, "targetvar"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3802
    .restart local v46    # "register":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 3804
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v59

    check-cast v59, Lnet/veritran/component/view/VTTextInterface;

    .line 3805
    .restart local v59    # "view":Lnet/veritran/component/view/VTTextInterface;
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getVTUIComponent()Lnet/veritran/component/VTUIComponent;

    move-result-object v62

    check-cast v62, Lnet/veritran/component/VTInputText;

    invoke-virtual/range {v62 .. v62}, Lnet/veritran/component/VTInputText;->getEnteredText()Ljava/lang/String;

    move-result-object v52

    .line 3806
    .restart local v52    # "storeValue":Ljava/lang/String;
    const-string v64, "VTCommonActivity"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Storing "

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v65, " on "

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    .line 3811
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    const-string v66, "targetvar"

    .line 3812
    move-object/from16 v0, v62

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v65

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 3806
    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v47

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 3815
    const-string v62, "input_method"

    .line 3816
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lnet/veritran/VTCommonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/inputmethod/InputMethodManager;

    .line 3817
    .local v29, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-interface/range {v59 .. v59}, Lnet/veritran/component/view/VTTextInterface;->getWindowToken()Landroid/os/IBinder;

    move-result-object v62

    const/16 v64, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v62

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_d

    .line 3821
    .end local v29    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v46    # "register":Ljava/lang/String;
    .end local v47    # "registerAsInt":I
    .end local v52    # "storeValue":Ljava/lang/String;
    .end local v59    # "view":Lnet/veritran/component/view/VTTextInterface;
    :pswitch_7
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v64, "targetvar"

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3822
    .restart local v46    # "register":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 3824
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v27

    check-cast v27, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;

    .line 3825
    .restart local v27    # "hview":Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;
    move-object/from16 v0, v27

    iget-object v0, v0, Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 3826
    .restart local v52    # "storeValue":Ljava/lang/String;
    const-string v64, "VTCommonActivity"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Storing "

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v65, " on "

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    .line 3831
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getComponent()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentInputInterface;

    move-result-object v62

    check-cast v62, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    const-string v66, "targetvar"

    .line 3832
    move-object/from16 v0, v62

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, v65

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 3826
    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v47

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 3838
    .end local v27    # "hview":Lnet/veritran/component/VTInputHidden$VTHiddenComponentView;
    .end local v46    # "register":Ljava/lang/String;
    .end local v47    # "registerAsInt":I
    .end local v52    # "storeValue":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v60

    check-cast v60, Lnet/veritran/component/VTCheckboxComponent;

    .line 3840
    .restart local v60    # "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    if-eqz v60, :cond_1e

    .line 3842
    invoke-virtual/range {v60 .. v60}, Lnet/veritran/component/VTCheckboxComponent;->getTargetvar()Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .line 3845
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v60 .. v60}, Lnet/veritran/component/VTCheckboxComponent;->getRegisterValuesCount()Ljava/lang/Integer;

    move-result-object v49

    .line 3848
    .local v49, "registerValuesCount":Ljava/lang/Integer;
    if-eqz v49, :cond_1f

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_1f

    .line 3849
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v49

    invoke-virtual {v15, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3852
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/veritran/component/view/VTUICompoundButtonView;

    .line 3853
    .restart local v6    # "chkView":Lnet/veritran/component/view/VTUICompoundButtonView;
    invoke-interface {v6}, Lnet/veritran/component/view/VTUICompoundButtonView;->isChecked()Z

    move-result v62

    if-eqz v62, :cond_21

    .line 3854
    invoke-virtual/range {v60 .. v60}, Lnet/veritran/component/VTCheckboxComponent;->getValue()Ljava/lang/String;

    move-result-object v52

    .line 3857
    .restart local v52    # "storeValue":Ljava/lang/String;
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_20

    .line 3858
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    .line 3859
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    move-object/from16 v0, v65

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v65, ";"

    move-object/from16 v0, v62

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 3858
    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 3861
    :cond_20
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 3864
    .end local v52    # "storeValue":Ljava/lang/String;
    :cond_21
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v34

    move-object/from16 v1, v62

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_1e

    .line 3865
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v34

    move-object/from16 v1, v62

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 3871
    .end local v6    # "chkView":Lnet/veritran/component/view/VTUICompoundButtonView;
    .end local v47    # "registerAsInt":I
    .end local v49    # "registerValuesCount":Ljava/lang/Integer;
    .end local v60    # "vtCheckbox":Lnet/veritran/component/VTCheckboxComponent;
    :pswitch_9
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v44

    check-cast v44, Lnet/veritran/component/view/VTRadioButtonComponentView;

    .line 3872
    .local v44, "rbkView":Lnet/veritran/component/view/VTRadioButtonComponentView;
    invoke-virtual/range {v44 .. v44}, Lnet/veritran/component/view/VTRadioButtonComponentView;->isChecked()Z

    move-result v62

    if-eqz v62, :cond_1e

    .line 3874
    invoke-virtual/range {v28 .. v28}, Lnet/veritran/VisualInputComponent;->getView()Landroid/view/View;

    move-result-object v62

    invoke-static/range {v62 .. v62}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v61

    check-cast v61, Lnet/veritran/component/VTRadioButtonComponent;

    .line 3876
    .restart local v61    # "vtRadio":Lnet/veritran/component/VTRadioButtonComponent;
    if-eqz v61, :cond_1e

    .line 3879
    invoke-virtual/range {v61 .. v61}, Lnet/veritran/component/VTRadioButtonComponent;->getTargetvar()Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .line 3881
    .restart local v47    # "registerAsInt":I
    invoke-virtual/range {v61 .. v61}, Lnet/veritran/component/VTRadioButtonComponent;->getValue()Ljava/lang/String;

    move-result-object v52

    .line 3883
    .restart local v52    # "storeValue":Ljava/lang/String;
    const-string v62, "VTCommonActivity"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Storing "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string v65, " on "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 3887
    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 3883
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    invoke-virtual {v14, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 3899
    .end local v4    # "area":Ljava/lang/String;
    .end local v28    # "i":Lnet/veritran/VisualInputComponent;
    .end local v30    # "inputByArea":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VisualInputComponent;>;"
    .end local v31    # "inputFormId":Ljava/lang/String;
    .end local v44    # "rbkView":Lnet/veritran/component/view/VTRadioButtonComponentView;
    .end local v47    # "registerAsInt":I
    .end local v52    # "storeValue":Ljava/lang/String;
    .end local v61    # "vtRadio":Lnet/veritran/component/VTRadioButtonComponent;
    :cond_22
    invoke-virtual {v14}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v16

    .line 3900
    .local v16, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_23
    :goto_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v62

    if-eqz v62, :cond_24

    .line 3901
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v48

    .line 3903
    .local v48, "registerId":I
    const-string v63, "VTCommonActivity"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Storing "

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 3905
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v64, " on "

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    .line 3903
    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v63

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    move-object/from16 v0, v63

    move/from16 v1, v48

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 3911
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_23

    .line 3914
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v62

    add-int/lit8 v63, v62, 0x1

    .line 3915
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/String;

    const-string v64, ";"

    const-string v65, ""

    move-object/from16 v0, v62

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/String;->length()I

    move-result v62

    sub-int v7, v63, v62

    .line 3917
    .local v7, "count":I
    const-string v62, "VTCommonActivity"

    new-instance v63, Ljava/lang/StringBuilder;

    invoke-direct/range {v63 .. v63}, Ljava/lang/StringBuilder;-><init>()V

    const-string v64, "Storing "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    .line 3919
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    const-string v64, " on "

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    .line 3921
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v63

    .line 3917
    invoke-static/range {v62 .. v63}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v63

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v0, v62

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v62

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v63

    move/from16 v1, v62

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 3927
    .end local v7    # "count":I
    .end local v48    # "registerId":I
    :cond_24
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v63

    :cond_25
    :goto_f
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v62

    if-eqz v62, :cond_1b

    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Integer;

    .line 3928
    .local v48, "registerId":Ljava/lang/Integer;
    move-object/from16 v0, v48

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-nez v62, :cond_25

    .line 3929
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v62

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v64

    const-string v65, ""

    move-object/from16 v0, v62

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 3931
    move-object/from16 v0, v48

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v62

    if-eqz v62, :cond_25

    .line 3933
    const-string v62, "VTCommonActivity"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string v65, "Storing 0 on "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 3937
    move-object/from16 v0, v48

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 3933
    move-object/from16 v0, v62

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v64

    move-object/from16 v0, v48

    invoke-virtual {v15, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Ljava/lang/Integer;

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Integer;->intValue()I

    move-result v62

    const-string v65, "0"

    move-object/from16 v0, v64

    move/from16 v1, v62

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_f

    .line 3421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3797
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public viewLoaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "viewId"    # Ljava/lang/String;

    .prologue
    .line 4094
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/VTCommonActivity;->backAction:Ljava/lang/String;

    .line 4095
    return-void
.end method
