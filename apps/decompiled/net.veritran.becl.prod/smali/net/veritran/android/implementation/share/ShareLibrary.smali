.class public Lnet/veritran/android/implementation/share/ShareLibrary;
.super Ljava/lang/Object;
.source "ShareLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;


# static fields
.field private static SHARE_WHATSAPP_URI:Ljava/lang/String;

.field private static instance:Lnet/veritran/android/implementation/share/ShareLibrary;


# instance fields
.field public CODE_SHAREIMAGE:I

.field private application:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/android/implementation/share/ShareLibrary;->instance:Lnet/veritran/android/implementation/share/ShareLibrary;

    .line 20
    const-string v0, "com.whatsapp"

    sput-object v0, Lnet/veritran/android/implementation/share/ShareLibrary;->SHARE_WHATSAPP_URI:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x4f9

    iput v0, p0, Lnet/veritran/android/implementation/share/ShareLibrary;->CODE_SHAREIMAGE:I

    .line 28
    return-void
.end method

.method private getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Application;)Lnet/veritran/android/implementation/share/ShareLibrary;
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 32
    sget-object v0, Lnet/veritran/android/implementation/share/ShareLibrary;->instance:Lnet/veritran/android/implementation/share/ShareLibrary;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lnet/veritran/android/implementation/share/ShareLibrary;

    invoke-direct {v0}, Lnet/veritran/android/implementation/share/ShareLibrary;-><init>()V

    sput-object v0, Lnet/veritran/android/implementation/share/ShareLibrary;->instance:Lnet/veritran/android/implementation/share/ShareLibrary;

    .line 37
    :cond_0
    sget-object v0, Lnet/veritran/android/implementation/share/ShareLibrary;->instance:Lnet/veritran/android/implementation/share/ShareLibrary;

    iput-object p0, v0, Lnet/veritran/android/implementation/share/ShareLibrary;->application:Landroid/app/Application;

    .line 38
    sget-object v0, Lnet/veritran/android/implementation/share/ShareLibrary;->instance:Lnet/veritran/android/implementation/share/ShareLibrary;

    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v3, p0, Lnet/veritran/android/implementation/share/ShareLibrary;->application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 44
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 47
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStatus(Ljava/lang/String;)I
    .locals 2
    .param p1, "allowedApp"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    .line 60
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    const-string v1, "WHATSAPP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lnet/veritran/android/implementation/share/ShareLibrary;->SHARE_WHATSAPP_URI:Ljava/lang/String;

    invoke-direct {p0, v1}, Lnet/veritran/android/implementation/share/ShareLibrary;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shareScreenCapture(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V
    .locals 12
    .param p1, "visualAreaOrComponentId"    # Ljava/lang/String;
    .param p2, "shareType"    # I
    .param p3, "backgroundColor"    # Ljava/lang/String;
    .param p4, "allowedApp"    # Ljava/lang/String;
    .param p5, "listener"    # Lnet/veritran/vtuserapplication/api/CallapiListenerResult;

    .prologue
    .line 109
    move-object v2, p1

    .line 110
    .local v2, "visualAreaOrComponentIdFinal":Ljava/lang/String;
    move v3, p2

    .line 111
    .local v3, "shareTypeFinal":I
    move-object v4, p3

    .line 112
    .local v4, "backgroundColorFinal":Ljava/lang/String;
    move-object/from16 v5, p4

    .line 113
    .local v5, "allowedAppFinal":Ljava/lang/String;
    move-object/from16 v6, p5

    .line 114
    .local v6, "lt":Lnet/veritran/vtuserapplication/api/CallapiListenerResult;
    iget v7, p0, Lnet/veritran/android/implementation/share/ShareLibrary;->CODE_SHAREIMAGE:I

    .line 115
    .local v7, "requestCodeFinal":I
    new-instance v0, Lnet/veritran/android/implementation/share/ShareLibrary$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lnet/veritran/android/implementation/share/ShareLibrary$1;-><init>(Lnet/veritran/android/implementation/share/ShareLibrary;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V

    .line 125
    .local v0, "pl":Lnet/veritran/vtuserapplication/model/PermissionListener;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    const-string v8, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v0, v7, v9}, Lnet/veritran/VTUserApplicationSmart;->checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z

    .line 127
    return-void
.end method

.method public shareScreenCaptureImplement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/api/CallapiListenerResult;)V
    .locals 8
    .param p1, "visualAreaOrComponentId"    # Ljava/lang/String;
    .param p2, "shareType"    # I
    .param p3, "backgroundColor"    # Ljava/lang/String;
    .param p4, "allowedApp"    # Ljava/lang/String;
    .param p5, "listener"    # Lnet/veritran/vtuserapplication/api/CallapiListenerResult;

    .prologue
    const/4 v7, 0x1

    .line 131
    if-ne p2, v7, :cond_0

    .line 135
    invoke-interface {p5, v7}, Lnet/veritran/vtuserapplication/api/CallapiListenerResult;->notifyResult(I)V

    .line 138
    :cond_0
    invoke-direct {p0}, Lnet/veritran/android/implementation/share/ShareLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    .line 140
    .local v0, "activity":Lnet/veritran/VTCommonActivity;
    invoke-virtual {v0, p1}, Lnet/veritran/VTCommonActivity;->getVisualAreaScreenCapture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 142
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 144
    invoke-virtual {v0, p1, p3}, Lnet/veritran/VTCommonActivity;->getComponentScreenCapture(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    :cond_1
    if-nez v1, :cond_2

    .line 149
    const/4 v5, 0x2

    invoke-interface {p5, v5}, Lnet/veritran/vtuserapplication/api/CallapiListenerResult;->notifyResult(I)V

    .line 152
    :cond_2
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    .line 153
    .local v4, "uas":Lnet/veritran/VTUserApplicationSmart;
    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v5

    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lnet/veritran/utils/ImageHandler;->putPublicImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "saved":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 155
    invoke-interface {p5, v7}, Lnet/veritran/vtuserapplication/api/CallapiListenerResult;->notifyResult(I)V

    .line 162
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "sharingIntent":Landroid/content/Intent;
    if-eqz p4, :cond_4

    const-string v5, ""

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    const-string v5, "WHATSAPP"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lnet/veritran/android/implementation/share/ShareLibrary;->SHARE_WHATSAPP_URI:Ljava/lang/String;

    invoke-direct {p0, v5}, Lnet/veritran/android/implementation/share/ShareLibrary;->isAppInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    sget-object v5, Lnet/veritran/android/implementation/share/ShareLibrary;->SHARE_WHATSAPP_URI:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :cond_4
    :goto_0
    const-string v5, "image/png"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v5, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/veritran/VTCommonActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    const/4 v5, 0x0

    invoke-interface {p5, v5}, Lnet/veritran/vtuserapplication/api/CallapiListenerResult;->notifyResult(I)V

    .line 181
    return-void

    .line 173
    :cond_5
    const/4 v5, 0x3

    invoke-interface {p5, v5}, Lnet/veritran/vtuserapplication/api/CallapiListenerResult;->notifyResult(I)V

    goto :goto_0
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "allowedApp"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Lnet/veritran/android/implementation/share/ShareLibrary;->getCurrentCommonActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    .line 82
    .local v0, "activity":Lnet/veritran/VTCommonActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "sharingIntent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "#N{}"

    const-string v3, "\n"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 87
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const-string v2, "WHATSAPP"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lnet/veritran/android/implementation/share/ShareLibrary;->SHARE_WHATSAPP_URI:Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/veritran/android/implementation/share/ShareLibrary;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    sget-object v2, Lnet/veritran/android/implementation/share/ShareLibrary;->SHARE_WHATSAPP_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/veritran/VTCommonActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 97
    :cond_1
    const/4 v2, 0x3

    goto :goto_0
.end method
