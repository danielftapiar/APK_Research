.class public abstract Lnet/veritran/VTUserApplicationSmart;
.super Landroid/app/Application;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/VTUserApplicationSmart$NavigationStartAction;,
        Lnet/veritran/VTUserApplicationSmart$ProcessAction;,
        Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;,
        Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;,
        Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;,
        Lnet/veritran/VTUserApplicationSmart$ShowDialog;,
        Lnet/veritran/VTUserApplicationSmart$deserializeListTask;,
        Lnet/veritran/VTUserApplicationSmart$serializeListTask;,
        Lnet/veritran/VTUserApplicationSmart$deserializeTask;,
        Lnet/veritran/VTUserApplicationSmart$serializeTask;
    }
.end annotation


# static fields
.field private static final BADGE_NUMBER:Ljava/lang/String; = "BADGE_NUMBER"

.field private static final CLIENT_TAG:Ljava/lang/String; = "__CLIENT__"

.field private static final CONFIGURATION_XML_DOWNLOAD_URL_PATTERN:Ljava/lang/String; = "__RES__/conf/__CLIENT_____PRODUCT__/__CONF_TYPE__/configuration___START_STATE__.xml"

.field private static final CONFIGURATION_ZIP_DOWNLOAD_URL_PATTERN:Ljava/lang/String; = "__RES__/conf/__CLIENT_____PRODUCT__/__CONF_TYPE__/configuration___START_STATE__.xml.gz"

.field private static final CONF_TYPE_TAG:Ljava/lang/String; = "__CONF_TYPE__"

.field public static final CONSTANT_APPREVISION:Ljava/lang/String; = "APPREVISION"

.field public static final CONSTANT_APPVERSION:Ljava/lang/String; = "APPVERSION"

.field public static final CONSTANT_CONFVERSION:Ljava/lang/String; = "CONFVERSION"

.field public static final CONSTANT_CURRENTTIME:Ljava/lang/String; = "CURRENTTIME"

.field public static final CONSTANT_EPOCH:Ljava/lang/String; = "EPOCH"

.field public static final CONSTANT_INTERNETCONNECTION:Ljava/lang/String; = "INTERNETCONNECTION"

.field public static final CONSTANT_MMHEIGHT:Ljava/lang/String; = "MMHEIGHT"

.field public static final CONSTANT_MMWIDTH:Ljava/lang/String; = "MMWIDTH"

.field public static final CONSTANT_NOW:Ljava/lang/String; = "NOW"

.field public static final CONSTANT_ORIENTATION:Ljava/lang/String; = "ORIENTATION"

.field public static final CONSTANT_PLATFORM:Ljava/lang/String; = "PLATFORM"

.field public static final CONSTANT_PROCESSING_MESSAGE:Ljava/lang/String; = "PROCESSING_MESSAGE"

.field public static final CONSTANT_PROCESSING_TITLE:Ljava/lang/String; = "PROCESSING_TITLE"

.field public static final CONSTANT_PROD:Ljava/lang/String; = "PROD"

.field public static final CONSTANT_PRODUCT:Ljava/lang/String; = "PRODUCT"

.field public static final CONSTANT_PXHEIGHT:Ljava/lang/String; = "PXHEIGHT"

.field public static final CONSTANT_PXWIDTH:Ljava/lang/String; = "PXWIDTH"

.field public static final CONSTANT_TODAY:Ljava/lang/String; = "TODAY"

.field public static final CONSTANT_TOMORROW:Ljava/lang/String; = "TOMORROW"

.field public static final CONSTANT_YESTERDAY:Ljava/lang/String; = "YESTERDAY"

.field private static final DATAFILE_CONFIGURATION_FINAL:Ljava/lang/String; = "datafile"

.field private static final DATAFILE_CONFIGURATION_TEMP:Ljava/lang/String; = "mytempfile"

.field private static final DATAFILE_CONFIGURATION_TEMP_UNZIP:Ljava/lang/String; = "mytempzipfile"

.field public static final DEBUG_MODE:Z = false

.field public static final DEBUG_MODE_ALWAYS_DOWNLOAD_FROM_URL:Z = false

.field public static final DEBUG_MODE_ALWAYS_READ_FROMRAW:Z = false

.field public static final DIALOG_CONFIRM_EXIT:I = 0x65

.field public static final DIALOG_CONFIRM_EXIT_CANCEL:Ljava/lang/String; = "Cancel"

.field public static final DIALOG_CONFIRM_EXIT_OK:Ljava/lang/String; = "OK"

.field public static final DIALOG_CONFIRM_EXIT_TITLE:Ljava/lang/String; = "Error en conexion"

.field public static final DIALOG_PLEASE_WAIT:I = 0x190

.field public static final DIALOG_PROGRESS:I = 0x191

.field public static final DIALOG_SHOW:I = 0x192

.field public static final GENERAL_ERROR_APPLICATION:Ljava/lang/String; = "Error"

.field private static final MICRO_EMU_CONVERTED:Ljava/lang/String; = "MICRO_EMU_CONVERTED"

.field public static final PARAM_PREV_URL:Ljava/lang/String; = "conf_preview"

.field private static final PATH_CONF_PATTERN:Ljava/lang/String; = "/conf/__CLIENT_____PRODUCT__/__CONF_TYPE__/"

.field private static final PATH_CONF_TAG:Ljava/lang/String; = "__PATH_CONF__"

.field private static final PATH_RES_PATTERN:Ljava/lang/String; = "/resources/__CLIENT_____PRODUCT__/__CONF_TYPE__/"

.field private static final PATH_RES_TAG:Ljava/lang/String; = "__PATH_RES__"

.field public static final PREFIX_CONFIGURATION:Ljava/lang/String; = ""

.field public static final PREFIX_SPLASH_CONFIGURATION:Ljava/lang/String; = "SPLASH"

.field public static final PREVIEW_MODE:Z = false

.field public static final PREV_ERROR:Ljava/lang/String; = "PREVIEW_ERROR"

.field public static final PREV_OK:Ljava/lang/String; = "PREVIEW_OK"

.field private static final PRODUCT_TAG:Ljava/lang/String; = "__PRODUCT__"

.field private static final REPODATA_GEO_LOCATION_LAT_ID:Ljava/lang/String; = "LOCATION_LAT_ID"

.field private static final REPODATA_GEO_LOCATION_LONG_ID:Ljava/lang/String; = "LOCATION_LONG_ID"

.field private static final REPODATA_GEO_LOCATION_TIMESTAMP_ID:Ljava/lang/String; = "LOCATION_TIMESTAMP_ID"

.field private static final REPODATA_PRODUCT_ID:Ljava/lang/String; = "PRODUCT_ID"

.field private static final START_STATE_TAG:Ljava/lang/String; = "__START_STATE__"

.field public static final TAG:Ljava/lang/String; = "VTUserApplicationSmart"

.field public static final TAG_PREV:Ljava/lang/String; = "VTPreview"

.field private static final URL_RESOURCES_TAG:Ljava/lang/String; = "__RES__"

.field public static final VTUSERAPPLICATION_STATE_FINISHLOADCONF:I = 0x1

.field public static final VTUSERAPPLICATION_STATE_STARTINGAPP:I

.field private static final _read_only_properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final _read_write_properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static application:Lnet/veritran/VTUserApplicationSmart;

.field private static final resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;


# instance fields
.field public READ_ONLY_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public READ_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public applicationNeedToUpdate:Z

.field private bundle:Landroid/os/Bundle;

.field public cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

.field public cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

.field private connectionTimeout:I

.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/veritran/VTAbstractActivity;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:I

.field currentThread:Ljava/lang/Thread;

.field private decimalPoint:Ljava/lang/String;

.field private defaultCharset:Ljava/lang/String;

.field private dialogs:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field public finishLoadingConfiguration:Z

.field private genericLaunchParameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field public hidesBackButton:Z

.field imageHandler:Lnet/veritran/utils/ImageHandler;

.field public isUpdatingConfiguration:Z

.field private kryo:Lcom/esotericsoftware/kryo/Kryo;

.field private loggedIn:Z

.field nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

.field popupsProcessing:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/veritran/component/VTPopup;",
            ">;"
        }
    .end annotation
.end field

.field private ppiBaselineRelation:F

.field private processingPopupViewParameter:Ljava/lang/String;

.field private showWaitDialogAfterMillis:J

.field public startLoadingConfiguration:Z

.field private startedByGenericLaunch:Z

.field private startedByPushNotification:Z

.field private text_required:Ljava/lang/String;

.field private thousandsSeparator:Ljava/lang/String;

.field private thrgroupSerialization:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lnet/veritran/android/implementation/VTLoggerImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/VTLoggerImplementation;-><init>()V

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/Setup;->setVTLogger(Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;)V

    .line 150
    new-instance v0, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    invoke-direct {v0}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;-><init>()V

    sput-object v0, Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    .line 572
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "PROD"

    aput-object v1, v0, v2

    const-string v1, "PRODUCT"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/veritran/VTUserApplicationSmart;->_read_write_properties:Ljava/util/List;

    .line 577
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "MMWIDTH"

    aput-object v1, v0, v2

    const-string v1, "MMHEIGHT"

    aput-object v1, v0, v3

    const-string v1, "PXWIDTH"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "PXHEIGHT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ORIENTATION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PLATFORM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "APPVERSION"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CONFVERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "APPREVISION"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INTERNETCONNECTION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NOW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TODAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TOMORROW"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "YESTERDAY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CURRENTTIME"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EPOCH"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "PROCESSING_MESSAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "PROCESSING_TITLE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lnet/veritran/VTUserApplicationSmart;->_read_only_properties:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 323
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 172
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 174
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->startLoadingConfiguration:Z

    .line 176
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->applicationNeedToUpdate:Z

    .line 206
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->hidesBackButton:Z

    .line 208
    const/16 v0, 0x5a

    iput v0, p0, Lnet/veritran/VTUserApplicationSmart;->connectionTimeout:I

    .line 212
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/veritran/VTUserApplicationSmart;->ppiBaselineRelation:F

    .line 213
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/veritran/VTUserApplicationSmart;->showWaitDialogAfterMillis:J

    .line 214
    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->text_required:Ljava/lang/String;

    .line 216
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->startedByPushNotification:Z

    .line 217
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->startedByGenericLaunch:Z

    .line 223
    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    .line 231
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->isUpdatingConfiguration:Z

    .line 315
    new-instance v0, Lnet/veritran/vtuserapplication/model/NavigationManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/NavigationManager;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    .line 317
    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->imageHandler:Lnet/veritran/utils/ImageHandler;

    .line 319
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->dialogs:Ljava/util/Hashtable;

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->currentThread:Ljava/lang/Thread;

    .line 598
    sget-object v0, Lnet/veritran/VTUserApplicationSmart;->_read_only_properties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->READ_ONLY_PROPERTIES:Ljava/util/List;

    .line 599
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getReadProperties()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->READ_PROPERTIES:Ljava/util/List;

    .line 1564
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "threadGroupSerialization"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->thrgroupSerialization:Ljava/lang/ThreadGroup;

    .line 2976
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->popupsProcessing:Ljava/util/HashMap;

    .line 3069
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->handler:Landroid/os/Handler;

    .line 324
    sput-object p0, Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;

    .line 325
    sget v0, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_DEBUG:I

    sput v0, Lnet/veritran/vtuserapplication/utils/VTLog;->logLevel:I

    .line 327
    new-instance v0, Lcom/esotericsoftware/kryo/Kryo;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/Kryo;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 329
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    const-class v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    new-instance v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    const-class v4, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v2, v3, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 330
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    const-class v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    new-instance v2, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    const-class v4, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-direct {v2, v3, v4}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTUserApplicationSmart;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart;->serializeObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTUserApplicationSmart;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Class;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart;->deserializeObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTUserApplicationSmart;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart;->serializeListObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/VTUserApplicationSmart;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/Class;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/VTUserApplicationSmart;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    return-object v0
.end method

.method static synthetic access$600()Lnet/veritran/VTUserApplicationSmart;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;

    return-object v0
.end method

.method private deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1601
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Lnet/veritran/VTUserApplicationSmart$deserializeListTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart$deserializeListTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1603
    .local v2, "task":Lnet/veritran/VTUserApplicationSmart$deserializeListTask;, "Lnet/veritran/VTUserApplicationSmart$deserializeListTask<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->thrgroupSerialization:Ljava/lang/ThreadGroup;

    const-string v3, "ThreadDeserialize"

    const-wide/32 v4, 0x10000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1605
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1607
    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart$deserializeListTask;->getResult()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private deserializeListObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1749
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 1751
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1753
    .local v1, "filename":Ljava/lang/String;
    const-string v9, "VTUserApplicationSmart"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeSerialize: filename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1755
    const/4 v4, 0x0

    .line 1757
    .local v4, "is":Lcom/esotericsoftware/kryo/io/Input;
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1760
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v5, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v5, v2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    .end local v4    # "is":Lcom/esotericsoftware/kryo/io/Input;
    .local v5, "is":Lcom/esotericsoftware/kryo/io/Input;
    :try_start_2
    const-string v9, "VTUserApplicationSmart"

    const-string v10, "DeSerialize: ObjectInputStream OK"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v8

    .line 1769
    .local v8, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 1771
    iget-object v9, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v9, v5, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 1773
    .local v6, "obj":Ljava/lang/Object;, "TT;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1769
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1777
    .end local v6    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1801
    if-eqz v5, :cond_1

    .line 1802
    :try_start_3
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/io/Input;->close()V

    :cond_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v7

    .line 1789
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "i":I
    .end local v5    # "is":Lcom/esotericsoftware/kryo/io/Input;
    .end local v7    # "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v8    # "size":I
    .restart local v4    # "is":Lcom/esotericsoftware/kryo/io/Input;
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v9, "VTUserApplicationSmart"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DeSerialize: Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnet/veritran/VTUserApplicationSmart;->setResourcesLoaded(Z)V

    .line 1793
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lnet/veritran/VTUserApplicationSmart;->setConfigurationLoaded(Z)V

    .line 1795
    new-instance v9, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

    invoke-direct {v9}, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;-><init>()V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1801
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v4, :cond_2

    .line 1802
    :try_start_5
    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/Input;->close()V

    :cond_2
    throw v9

    .line 1805
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "is":Lcom/esotericsoftware/kryo/io/Input;
    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v9

    .line 1801
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "is":Lcom/esotericsoftware/kryo/io/Input;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "is":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v4    # "is":Lcom/esotericsoftware/kryo/io/Input;
    goto :goto_2

    .line 1789
    .end local v4    # "is":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v5    # "is":Lcom/esotericsoftware/kryo/io/Input;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "is":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v4    # "is":Lcom/esotericsoftware/kryo/io/Input;
    goto :goto_1
.end method

.method private deserializeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1579
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Lnet/veritran/VTUserApplicationSmart$deserializeTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart$deserializeTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1581
    .local v2, "task":Lnet/veritran/VTUserApplicationSmart$deserializeTask;, "Lnet/veritran/VTUserApplicationSmart$deserializeTask<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->thrgroupSerialization:Ljava/lang/ThreadGroup;

    const-string v3, "ThreadDeserialize"

    const-wide/32 v4, 0x10000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1583
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1585
    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private deserializeObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1656
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 1659
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    .local v1, "filename":Ljava/lang/String;
    const-string v5, "VTUserApplicationSmart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeSerialize: filename: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v3, v2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V

    .line 1669
    .local v3, "is":Lcom/esotericsoftware/kryo/io/Input;
    const-string v5, "VTUserApplicationSmart"

    const-string v6, "DeSerialize: ObjectInputStream OK"

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    iget-object v5, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v5, v3, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 1675
    .local v4, "ret":Ljava/lang/Object;, "TT;"
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->close()V

    .line 1676
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1678
    :try_start_2
    monitor-exit p0

    return-object v4

    .line 1689
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "is":Lcom/esotericsoftware/kryo/io/Input;
    .end local v4    # "ret":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 1691
    .local v0, "ex":Ljava/lang/Exception;
    const-string v5, "VTUserApplicationSmart"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeSerialize: Exception1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/veritran/VTUserApplicationSmart;->setResourcesLoaded(Z)V

    .line 1694
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lnet/veritran/VTUserApplicationSmart;->setConfigurationLoaded(Z)V

    .line 1696
    new-instance v5, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

    invoke-direct {v5}, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;-><init>()V

    throw v5

    .line 1700
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "filename":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private downloadXMLConfigurationFromModel(Z)V
    .locals 2
    .param p1, "showPleaseWait"    # Z

    .prologue
    .line 922
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "downloadXMLConfigurationFromModel"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    new-instance v0, Lnet/veritran/vtuserapplication/model/NavigationManager;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/NavigationManager;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    .line 925
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    new-instance v1, Lnet/veritran/VTUserApplicationSmart$1;

    invoke-direct {v1, p0, p1}, Lnet/veritran/VTUserApplicationSmart$1;-><init>(Lnet/veritran/VTUserApplicationSmart;Z)V

    invoke-virtual {v0, v1}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method private getConfigurationFontFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 2014
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fonts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2704
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationResourceFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 1953
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "configuration_resources"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationSerializedFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1616
    invoke-direct {p0, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConfigurationSerializedFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1341
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration_serialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 792
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 793
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "value":Ljava/lang/String;
    return-object v1
.end method

.method public static getInstance()Lnet/veritran/VTUserApplicationSmart;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;

    return-object v0
.end method

.method private getReadProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, "readProperties":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lnet/veritran/VTUserApplicationSmart;->_read_write_properties:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    sget-object v1, Lnet/veritran/VTUserApplicationSmart;->_read_only_properties:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 606
    return-object v0
.end method

.method private logMemory(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x400

    .line 236
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 237
    .local v2, "maxMemory":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 238
    .local v1, "freeMemory":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 240
    .local v3, "totalMemory":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 243
    .local v0, "availableProcessors":I
    const-string v4, "VTUserApplicationSmart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Max(KB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, "VTUserApplicationSmart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Free(KB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "VTUserApplicationSmart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Total(KB): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v4, "VTUserApplicationSmart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logMemory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Num Processors: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method private readFileFromInternalStorage()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 2650
    const-string v2, "VTUserApplicationSmart"

    const-string v3, "readFileFromInternalStorage()"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    const/4 v1, 0x0

    .line 2653
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v2, "datafile"

    invoke-virtual {p0, v2}, Lnet/veritran/VTUserApplicationSmart;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2658
    :goto_0
    return-object v1

    .line 2655
    :catch_0
    move-exception v0

    .line 2656
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "VTUserApplicationSmart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFileFromInternalStorage():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resolveTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/model/Model;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "prodId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 287
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    const-string v4, "__RES__"

    .line 289
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    const-string v6, "UASH"

    invoke-virtual {v5, v1, v6}, Lnet/veritran/VTUserApplicationSmart;->getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 287
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__PATH_RES__"

    const-string v6, "/resources/__CLIENT_____PRODUCT__/__CONF_TYPE__/"

    .line 291
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__PATH_CONF__"

    const-string v6, "/conf/__CLIENT_____PRODUCT__/__CONF_TYPE__/"

    .line 292
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__CLIENT__"

    .line 293
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/model/Model;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__PRODUCT__"

    .line 294
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/model/Model;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__CONF_TYPE__"

    .line 295
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/model/Model;->getConfigurationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__START_STATE__"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 296
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/model/Model;->getStartState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTStringUtils;->leftZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 301
    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 303
    .local v3, "start":I
    if-lez v3, :cond_0

    .line 305
    const-string v4, "//"

    const-string v5, "/"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 306
    const-string v4, ":/"

    const-string v5, "://"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 309
    :cond_0
    return-object v2

    .line 297
    .end local v3    # "start":I
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method private saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 787
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 788
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 789
    return-void
.end method

.method private serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1590
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Lnet/veritran/VTUserApplicationSmart$serializeListTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart$serializeListTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1592
    .local v2, "task":Lnet/veritran/VTUserApplicationSmart$serializeListTask;, "Lnet/veritran/VTUserApplicationSmart$serializeListTask<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->thrgroupSerialization:Ljava/lang/ThreadGroup;

    const-string v3, "ThreadSerialize"

    const-wide/32 v4, 0x10000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1594
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1596
    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart$serializeListTask;->getResult()Z

    move-result v1

    return v1
.end method

.method private serializeListObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1708
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 1710
    const/4 v3, 0x0

    .line 1713
    .local v3, "os":Lcom/esotericsoftware/kryo/io/Output;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1714
    .local v1, "filename":Ljava/lang/String;
    const-string v6, "VTUserApplicationSmart"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serialize: filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1718
    .local v5, "out":Ljava/io/FileOutputStream;
    new-instance v4, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v4, v5}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1723
    .end local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .local v4, "os":Lcom/esotericsoftware/kryo/io/Output;
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 1725
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1727
    .local v2, "object":Ljava/lang/Object;, "TT;"
    iget-object v7, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v7, v4, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 1731
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 1733
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    :goto_1
    const/4 v6, 0x0

    .line 1737
    if-eqz v3, :cond_0

    .line 1738
    :try_start_2
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Output;->close()V

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1742
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_2
    return v6

    .line 1737
    .end local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_1
    if-eqz v4, :cond_2

    .line 1738
    :try_start_3
    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/io/Output;->close()V

    .line 1742
    :cond_2
    const/4 v6, 0x1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v4

    .end local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    goto :goto_2

    .line 1737
    .end local v1    # "filename":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    .line 1738
    :try_start_4
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Output;->close()V

    :cond_3
    throw v6

    .line 1743
    :catchall_1
    move-exception v6

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .end local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    goto :goto_4

    .line 1737
    .end local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    :catchall_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .restart local v3    # "os":Lcom/esotericsoftware/kryo/io/Output;
    goto :goto_3

    .line 1731
    .end local v1    # "filename":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private serializeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 1568
    .local p3, "object":Ljava/lang/Object;, "TT;"
    new-instance v2, Lnet/veritran/VTUserApplicationSmart$serializeTask;

    invoke-direct {v2, p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart$serializeTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1570
    .local v2, "task":Lnet/veritran/VTUserApplicationSmart$serializeTask;, "Lnet/veritran/VTUserApplicationSmart$serializeTask<TT;>;"
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->thrgroupSerialization:Ljava/lang/ThreadGroup;

    const-string v3, "ThreadSerialize"

    const-wide/32 v4, 0x10000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1572
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1574
    invoke-virtual {v2}, Lnet/veritran/VTUserApplicationSmart$serializeTask;->getResult()Z

    move-result v1

    return v1
.end method

.method private serializeObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 1624
    monitor-enter p0

    .line 1629
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "filename":Ljava/lang/String;
    const-string v4, "VTUserApplicationSmart"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Serialize: filename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v3, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v2, v3}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V

    .line 1638
    .local v2, "os":Lcom/esotericsoftware/kryo/io/Output;
    iget-object v4, p0, Lnet/veritran/VTUserApplicationSmart;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v4, v2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 1641
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Output;->close()V

    .line 1642
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    const/4 v4, 0x1

    :try_start_1
    monitor-exit p0

    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "os":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 1644
    :catch_0
    move-exception v0

    .line 1646
    .local v0, "ex":Ljava/io/IOException;
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1650
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private shouldLoadConfiguration()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lnet/veritran/VTUserApplicationSmart;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "CONFIGURATION_LOADED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateAppIconBadge(I)V
    .locals 5
    .param p1, "badge"    # I

    .prologue
    .line 819
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 820
    .local v1, "manufacturer":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 822
    const-string v2, "SONY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 823
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 825
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v2, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".VTCommonActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    if-gtz p1, :cond_1

    .line 828
    const-string v2, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 834
    :goto_0
    const-string v2, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0, v0}, Lnet/veritran/VTUserApplicationSmart;->sendBroadcast(Landroid/content/Intent;)V

    .line 887
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 831
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 832
    const-string v2, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 838
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "SAMSUNG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "badge_count"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v2, "badge_count_package_name"

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v2, "badge_count_class_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->activityPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".VTCommonActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    invoke-virtual {p0, v0}, Lnet/veritran/VTUserApplicationSmart;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private writeFileToInternalStorage(Ljava/io/InputStream;Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;Z)V
    .locals 15
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "task"    # Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;
    .param p3, "zipped"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2594
    const/4 v10, 0x0

    .line 2596
    .local v10, "totalAvailable":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 2602
    :goto_0
    const-string v12, "VTUserApplicationSmart"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writeFileToInternalStorage() "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    :try_start_1
    const-string v12, "mytempfile"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lnet/veritran/VTUserApplicationSmart;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    .line 2607
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v12, 0x1000

    new-array v2, v12, [B

    .line 2609
    .local v2, "buffer":[B
    const/4 v11, 0x0

    .line 2610
    .local v11, "totalReaded":I
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_0

    .line 2611
    const/4 v12, 0x0

    invoke-virtual {v6, v2, v12, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 2612
    add-int/2addr v11, v8

    .line 2613
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v10

    .line 2614
    const-string v12, "VTUserApplicationSmart"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writeFileToInternalStorage() totalReaded:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->updateProgress(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2622
    .end local v2    # "buffer":[B
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v8    # "read":I
    .end local v11    # "totalReaded":I
    :catch_0
    move-exception v3

    .line 2623
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "VTUserApplicationSmart"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writeFileToInternalStorage():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 2597
    :catch_1
    move-exception v4

    .line 2600
    .local v4, "e1":Ljava/io/IOException;
    const/4 v10, 0x0

    goto :goto_0

    .line 2619
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    .restart local v11    # "totalReaded":I
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 2620
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2626
    const-string v12, "VTUserApplicationSmart"

    const-string v13, "writeFileToInternalStorage(): write ok"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationPath()Ljava/lang/String;

    move-result-object v7

    .line 2628
    .local v7, "path":Ljava/lang/String;
    const-string v12, "VTUserApplicationSmart"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writeFileToInternalStorage(): path:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    if-eqz p3, :cond_1

    .line 2631
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mytempfile"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mytempzipfile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/android/implementation/ZipManager;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    new-instance v5, Ljava/io/File;

    const-string v12, "mytempzipfile"

    invoke-direct {v5, v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    .local v5, "from":Ljava/io/File;
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    .line 2637
    .local v1, "bFrom":Z
    const-string v12, "VTUserApplicationSmart"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "writeFileToInternalStorage(): file source exists?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    new-instance v9, Ljava/io/File;

    const-string v12, "datafile"

    invoke-direct {v9, v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    .local v9, "to":Ljava/io/File;
    invoke-virtual {v5, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2641
    const-string v12, "VTUserApplicationSmart"

    const-string v13, "Couldn\'t rename!!!"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2634
    .end local v1    # "bFrom":Z
    .end local v5    # "from":Ljava/io/File;
    .end local v9    # "to":Ljava/io/File;
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v12, "mytempfile"

    invoke-direct {v5, v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "from":Ljava/io/File;
    goto :goto_3

    .line 2645
    .restart local v1    # "bFrom":Z
    .restart local v9    # "to":Ljava/io/File;
    :cond_2
    const-string v12, "VTUserApplicationSmart"

    const-string v13, "writeFileToInternalStorage(): rename ok"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public abstract activityPackageName()Ljava/lang/String;
.end method

.method public applicationNeedToUpdate()V
    .locals 1

    .prologue
    .line 2952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart;->applicationNeedToUpdate:Z

    .line 2953
    return-void
.end method

.method public varargs checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z
    .locals 14
    .param p1, "messageFail"    # Ljava/lang/String;
    .param p2, "permissionListener"    # Lnet/veritran/vtuserapplication/model/PermissionListener;
    .param p3, "request"    # I
    .param p4, "permission"    # [Ljava/lang/String;

    .prologue
    .line 3279
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v12

    check-cast v12, Lnet/veritran/VTCommonActivity;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lnet/veritran/VTCommonActivity;->setCurrentPermissionListener(Lnet/veritran/vtuserapplication/model/PermissionListener;)V

    .line 3280
    move/from16 v1, p3

    .line 3281
    .local v1, "REQUEST":I
    const/4 v10, 0x1

    .line 3282
    .local v10, "permissionsGranted":Z
    const/4 v8, 0x0

    .line 3283
    .local v8, "permissionFirstTimeRequest":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3284
    .local v6, "listaPermisos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3285
    .local v7, "listaPermisosNeverAsk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v12, v0

    if-ge v4, v12, :cond_5

    .line 3286
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/VTAbstractActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    aget-object v13, p4, v4

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_3

    .line 3287
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 3288
    .local v11, "pref":Landroid/content/SharedPreferences;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VT_PERM_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p4, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3289
    .local v9, "permissionVerifyBefore":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v12

    aget-object v13, p4, v4

    invoke-static {v12, v13}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3301
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3302
    :cond_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 3303
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VT_PERM_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, p4, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "YES"

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3304
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3305
    const/4 v8, 0x1

    .line 3307
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    aget-object v12, p4, v4

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3308
    const/4 v10, 0x0

    .line 3285
    .end local v9    # "permissionVerifyBefore":Ljava/lang/String;
    .end local v11    # "pref":Landroid/content/SharedPreferences;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 3296
    .restart local v9    # "permissionVerifyBefore":Ljava/lang/String;
    .restart local v11    # "pref":Landroid/content/SharedPreferences;
    :cond_4
    const-string v12, "YES"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3299
    aget-object v12, p4, v4

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3312
    .end local v9    # "permissionVerifyBefore":Ljava/lang/String;
    .end local v11    # "pref":Landroid/content/SharedPreferences;
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v2, v12, [Ljava/lang/String;

    .line 3313
    .local v2, "arrayPermisos":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 3314
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v2, v5

    .line 3313
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3316
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_7

    .line 3318
    sget-object v12, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_DENIED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lnet/veritran/vtuserapplication/model/PermissionListener;->notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V

    .line 3320
    :cond_7
    if-nez v10, :cond_8

    .line 3323
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v12

    invoke-static {v12, v2, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 3330
    :goto_3
    return v10

    .line 3328
    :cond_8
    sget-object v12, Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;->PERMISSION_GRANTED:Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lnet/veritran/vtuserapplication/model/PermissionListener;->notifyResult(Lnet/veritran/vtuserapplication/model/PermissionListener$PermissionResults;)V

    goto :goto_3
.end method

.method public checkPermissionManifest(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 3334
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 3340
    :cond_0
    :goto_0
    return v0

    .line 3337
    :cond_1
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/VTAbstractActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanPersistentImages()V
    .locals 1

    .prologue
    .line 3132
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/utils/ImageHandler;->cleanPersistentImages()V

    .line 3133
    return-void
.end method

.method public closeApplication()V
    .locals 2

    .prologue
    .line 2240
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    .line 2242
    .local v0, "act":Lnet/veritran/VTCommonActivity;
    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->finish()V

    .line 2246
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 2249
    return-void
.end method

.method public closeMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 3072
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMessage:: dialogid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    const-string v1, "PROCESSING_TITLE"

    invoke-virtual {p0, v1}, Lnet/veritran/VTUserApplicationSmart;->removePreference(Ljava/lang/String;)V

    .line 3075
    const-string v1, "PROCESSING_MESSAGE"

    invoke-virtual {p0, v1}, Lnet/veritran/VTUserApplicationSmart;->removePreference(Ljava/lang/String;)V

    .line 3077
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->popupsProcessing:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3079
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->handler:Landroid/os/Handler;

    new-instance v2, Lnet/veritran/VTUserApplicationSmart$3;

    invoke-direct {v2, p0, p1}, Lnet/veritran/VTUserApplicationSmart$3;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3090
    :cond_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->dialogs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 3091
    .local v0, "dialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_1

    .line 3092
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3093
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->dialogs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    :goto_0
    return-void

    .line 3095
    :cond_1
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog of id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist. Can\'t be dismissed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public configureDialogBuilder(Lnet/veritran/VTAbstractActivity;Landroid/app/AlertDialog$Builder;Landroid/view/View$OnClickListener;Landroid/view/View;I)V
    .locals 7
    .param p1, "activity"    # Lnet/veritran/VTAbstractActivity;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 2166
    const/4 v3, -0x1

    if-eq p5, v3, :cond_0

    .line 2169
    new-instance v1, Lnet/veritran/listeners/DialogDismissOnClickListener;

    invoke-direct {v1, p1}, Lnet/veritran/listeners/DialogDismissOnClickListener;-><init>(Landroid/app/Activity;)V

    .line 2175
    .local v1, "dismissOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lnet/veritran/listeners/ExitApplicationSmartOnClickListener;

    invoke-direct {v2, p1}, Lnet/veritran/listeners/ExitApplicationSmartOnClickListener;-><init>(Lnet/veritran/VTAbstractActivity;)V

    .line 2178
    .local v2, "exitAppOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    sget-object v3, Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    const-string v4, ""

    const-string v5, "err0014"

    invoke-virtual {v3, v4, v5}, Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;->getLanguageResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2179
    .local v0, "DIALOG_CONFIRM_EXIT_MESSAGE":Ljava/lang/String;
    sparse-switch p5, :sswitch_data_0

    .line 2199
    .end local v0    # "DIALOG_CONFIRM_EXIT_MESSAGE":Ljava/lang/String;
    .end local v1    # "dismissOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "exitAppOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    :goto_0
    return-void

    .line 2181
    .restart local v0    # "DIALOG_CONFIRM_EXIT_MESSAGE":Ljava/lang/String;
    .restart local v1    # "dismissOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v2    # "exitAppOnClickListener":Landroid/content/DialogInterface$OnClickListener;
    :sswitch_0
    const-string v3, "Error en conexion"

    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (ua"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x233

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2183
    const-string v3, "OK"

    invoke-virtual {p2, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2187
    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2190
    :sswitch_1
    const-string v3, "Detalle"

    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2191
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2192
    const-string v3, "OK"

    invoke-virtual {p2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2196
    invoke-virtual {p2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2179
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x192 -> :sswitch_1
    .end sparse-switch
.end method

.method public deleteConfigurationFromInternalStorage()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 2664
    const-string v8, "VTUserApplicationSmart"

    const-string v10, "DELETE CONFIGURATION FROM INTERNAL STORAGE!!!"

    invoke-static {v8, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationPath()Ljava/lang/String;

    move-result-object v3

    .line 2667
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    const-string v8, "datafile"

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    .local v0, "conf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2672
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFolder()Ljava/io/File;

    move-result-object v6

    .line 2673
    .local v6, "resourcesFolder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v4, v10, v8

    .line 2675
    .local v4, "resourceFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2673
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2679
    .end local v4    # "resourceFile":Ljava/io/File;
    :cond_0
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationFontFolder()Ljava/io/File;

    move-result-object v2

    .line 2680
    .local v2, "fontsFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_1
    if-ge v8, v11, :cond_1

    aget-object v1, v10, v8

    .line 2682
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2680
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2685
    .end local v1    # "fontFile":Ljava/io/File;
    :cond_1
    const-string v8, ""

    invoke-direct {p0, v8}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 2686
    .local v7, "resourcesSerializedFolder":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_2
    if-ge v8, v11, :cond_2

    aget-object v5, v10, v8

    .line 2688
    .local v5, "resourceSerializedFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2686
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2691
    .end local v5    # "resourceSerializedFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p0, v9}, Lnet/veritran/VTUserApplicationSmart;->setResourcesLoaded(Z)V

    .line 2692
    invoke-virtual {p0, v9}, Lnet/veritran/VTUserApplicationSmart;->setConfigurationLoaded(Z)V

    .line 2695
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/utils/ImageHandler;->cleanCachedAndSessionImages()V

    .line 2699
    invoke-virtual {p0, v9}, Lnet/veritran/VTUserApplicationSmart;->setConfigurationLoaded(Z)V

    .line 2700
    invoke-virtual {p0, v9}, Lnet/veritran/VTUserApplicationSmart;->setResourcesLoaded(Z)V

    .line 2701
    return-void
.end method

.method public downloadXMLConfiguration()V
    .locals 2

    .prologue
    .line 913
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "downloadXMLConfiguration"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v0, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Lnet/veritran/VTAbstractActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 915
    return-void
.end method

.method public downloadXMLConfigurationFromModel()V
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/veritran/VTUserApplicationSmart;->downloadXMLConfigurationFromModel(Z)V

    .line 919
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2252
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->loggedIn:Z

    .line 2253
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2254
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTAbstractActivity;

    .line 2255
    .local v0, "current":Lnet/veritran/VTAbstractActivity;
    if-eqz v0, :cond_0

    .line 2256
    invoke-virtual {v0}, Lnet/veritran/VTAbstractActivity;->finish()V

    .line 2259
    .end local v0    # "current":Lnet/veritran/VTAbstractActivity;
    :cond_0
    invoke-virtual {p0, v2}, Lnet/veritran/VTUserApplicationSmart;->setCurrentState(I)V

    .line 2260
    return-void
.end method

.method public getAllPreferencesKeys()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3119
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3121
    .local v0, "pref":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/Vector;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 3123
    .local v1, "res":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    return-object v1
.end method

.method public abstract getAndroidResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public getAndroidResourceLoader()Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;
    .locals 1

    .prologue
    .line 3151
    sget-object v0, Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    return-object v0
.end method

.method public getBadgeNumber()I
    .locals 5

    .prologue
    .line 808
    const-string v2, "VTUserApplicationSmart"

    const-string v3, "getting Badge Number"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 813
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "BADGE_NUMBER"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 814
    .local v0, "badgeNumber":I
    const-string v2, "VTUserApplicationSmart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BadgeNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    return v0
.end method

.method public getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 2072
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->imageHandler:Lnet/veritran/utils/ImageHandler;

    invoke-virtual {v0, p1, p2, p3}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBitmapForSize(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lnet/veritran/VTUserApplicationSmart;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2852
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getConfiguration(Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;)V
    .locals 29
    .param p1, "task"    # Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;

    .prologue
    .line 937
    const/4 v13, 0x0

    .line 940
    .local v13, "is":Ljava/io/InputStream;
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->shouldLoadConfiguration()Z

    move-result v18

    .line 942
    .local v18, "mustDownloadConfiguration":Z
    if-eqz v18, :cond_1

    .line 944
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->readFileFromInternalStorage()Ljava/io/InputStream;

    move-result-object v13

    .line 954
    if-nez v13, :cond_1

    .line 955
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->setResourcesLoaded(Z)V

    .line 956
    const/4 v15, 0x0

    .line 957
    .local v15, "isZipFile":Z
    const/16 v21, 0x0

    .line 959
    .local v21, "url":Ljava/net/URL;
    :try_start_0
    new-instance v21, Ljava/net/URL;

    .end local v21    # "url":Ljava/net/URL;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getZIPDownloadURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    .restart local v21    # "url":Ljava/net/URL;
    const/16 v22, 0x0

    .line 977
    .local v22, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v23, "VTUserApplicationSmart"

    const-string v24, "download begining"

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "download url:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    .line 981
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 982
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 983
    .end local v13    # "is":Ljava/io/InputStream;
    .local v14, "is":Ljava/io/InputStream;
    :try_start_2
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "urlConnection.getContentLength():"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 984
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 983
    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->setMaxProgress(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 986
    const/4 v15, 0x1

    move-object v13, v14

    .line 1038
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v13, v1, v15}, Lnet/veritran/VTUserApplicationSmart;->writeFileToInternalStorage(Ljava/io/InputStream;Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1056
    if-eqz v13, :cond_0

    .line 1058
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 1065
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->readFileFromInternalStorage()Ljava/io/InputStream;

    move-result-object v13

    .line 1077
    .end local v15    # "isZipFile":Z
    .end local v21    # "url":Ljava/net/URL;
    .end local v22    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/utils/ImageHandler;->cleanCachedAndSessionImages()V

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->shouldLoadResources()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1080
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFolder()Ljava/io/File;

    move-result-object v20

    .line 1081
    .local v20, "resourcesFolder":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    aget-object v8, v24, v23

    .line 1082
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1081
    add-int/lit8 v23, v23, 0x1

    goto :goto_2

    .line 960
    .end local v8    # "file":Ljava/io/File;
    .end local v20    # "resourcesFolder":Ljava/io/File;
    .restart local v15    # "isZipFile":Z
    :catch_0
    move-exception v6

    .line 962
    .local v6, "e":Ljava/net/MalformedURLException;
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ERROR: malformed url:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getXMLDownloadURL()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 969
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 970
    const/16 v23, 0x20b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->showApplicationError(I)V

    .line 1214
    .end local v6    # "e":Ljava/net/MalformedURLException;
    .end local v15    # "isZipFile":Z
    :goto_3
    return-void

    .line 987
    .restart local v15    # "isZipFile":Z
    .restart local v21    # "url":Ljava/net/URL;
    .restart local v22    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v6

    move-object v14, v13

    .line 989
    .end local v13    # "is":Ljava/io/InputStream;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "is":Ljava/io/InputStream;
    :goto_4
    :try_start_5
    new-instance v21, Ljava/net/URL;

    .end local v21    # "url":Ljava/net/URL;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getXMLDownloadURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1007
    .restart local v21    # "url":Ljava/net/URL;
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    .line 1008
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1009
    new-instance v13, Ljava/io/BufferedInputStream;

    .line 1010
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 1011
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :try_start_7
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "urlConnection.getContentLength():"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1012
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1011
    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart$ConfigurationLoadTask;->setMaxProgress(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 1014
    :catch_2
    move-exception v12

    .line 1015
    .local v12, "ioe":Ljava/io/IOException;
    :goto_5
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ERROR: IOException2:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 1024
    const/16 v23, 0x20b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->showApplicationError(I)V

    goto/16 :goto_3

    .line 990
    .end local v12    # "ioe":Ljava/io/IOException;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v21    # "url":Ljava/net/URL;
    .restart local v14    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v17

    .line 991
    .local v17, "mue":Ljava/net/MalformedURLException;
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ERROR: malformed url:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 992
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getXMLDownloadURL()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 991
    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 1001
    const/16 v23, 0x20b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->showApplicationError(I)V

    move-object v13, v14

    .line 1002
    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 1027
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "mue":Ljava/net/MalformedURLException;
    .restart local v21    # "url":Ljava/net/URL;
    :catch_4
    move-exception v6

    .line 1029
    .local v6, "e":Ljava/io/IOException;
    :goto_6
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ERROR: IOException2:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->showDialog(Lnet/veritran/VTAbstractActivity;I)V

    goto/16 :goto_3

    .line 1039
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 1040
    .restart local v6    # "e":Ljava/io/IOException;
    if-eqz v13, :cond_2

    .line 1042
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1049
    :cond_2
    :goto_7
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 1052
    const/16 v23, 0x21d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->showApplicationError(I)V

    goto/16 :goto_3

    .line 1043
    :catch_6
    move-exception v7

    .line 1044
    .local v7, "ex":Ljava/io/IOException;
    const-string v23, "VTUserApplicationSmart"

    const-string v24, "Catched exception empty (fortify)"

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1059
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 1060
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v23, "VTUserApplicationSmart"

    const-string v24, "Catched exception empty (fortify)"

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1085
    .end local v6    # "e":Ljava/io/IOException;
    .end local v15    # "isZipFile":Z
    .end local v21    # "url":Ljava/net/URL;
    .end local v22    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v20    # "resourcesFolder":Ljava/io/File;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationFontFolder()Ljava/io/File;

    move-result-object v10

    .line 1086
    .local v10, "fontsFolder":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    aget-object v8, v24, v23

    .line 1087
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1086
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 1092
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "fontsFolder":Ljava/io/File;
    .end local v20    # "resourcesFolder":Ljava/io/File;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFolder()Ljava/io/File;

    move-result-object v20

    .line 1093
    .restart local v20    # "resourcesFolder":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_9
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    aget-object v8, v24, v23

    .line 1095
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1096
    .local v9, "filename":Ljava/lang/String;
    const-string v26, ".svg"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x4

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lnet/veritran/utils/ImageHandler;->initializeSavedSVGImage(Ljava/lang/String;)V

    .line 1093
    :goto_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_9

    .line 1102
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lnet/veritran/utils/ImageHandler;->initializeSavedSessionImage(Ljava/lang/String;)V

    goto :goto_a

    .line 1107
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "filename":Ljava/lang/String;
    :cond_6
    if-eqz v18, :cond_7

    .line 1109
    const-string v23, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationSerializedFolder(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1111
    .local v4, "confSerializedFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v23, 0x0

    :goto_b
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    aget-object v8, v24, v23

    .line 1112
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1111
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 1116
    .end local v4    # "confSerializedFolder":Ljava/io/File;
    .end local v8    # "file":Ljava/io/File;
    :cond_7
    const-string v23, "Previo crear ConfigurationManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V

    .line 1118
    new-instance v23, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    const-string v24, ""

    invoke-direct/range {v23 .. v24}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    .line 1120
    if-eqz v18, :cond_8

    .line 1122
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->setInputStream(Ljava/io/InputStream;)V
    :try_end_9
    .catch Lnet/veritran/vtuserapplication/model/InvalidSetupException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1127
    :goto_c
    const-string v23, "Previo Parse"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V

    .line 1130
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->parse()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_9

    .line 1138
    :cond_8
    const-string v23, "Post Parse"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->nm:Lnet/veritran/vtuserapplication/model/NavigationManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lnet/veritran/vtuserapplication/model/NavigationManager;->setConfigurationManager(Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;)V

    .line 1141
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 1143
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->hidesBackButton:Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v23

    .line 1146
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1149
    .local v11, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    const-string v23, "SYNCHRO_CONNECTION_TIMEOUT"

    const-string v24, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_9
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 1151
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 1152
    .local v5, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "HIDE_BACK_BUTTONS"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1154
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    const-string v24, "true"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1155
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->hidesBackButton:Z

    goto :goto_d

    .line 1123
    .end local v5    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    .end local v11    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :catch_8
    move-exception v16

    .line 1124
    .local v16, "isc":Lnet/veritran/vtuserapplication/model/InvalidSetupException;
    const-string v23, "VTUserApplicationSmart"

    invoke-virtual/range {v16 .. v16}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->closeApplication()V

    goto/16 :goto_c

    .line 1131
    .end local v16    # "isc":Lnet/veritran/vtuserapplication/model/InvalidSetupException;
    :catch_9
    move-exception v7

    .line 1132
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->deleteConfigurationFromInternalStorage()V

    .line 1133
    const/16 v23, 0x21d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->showApplicationError(I)V

    goto/16 :goto_3

    .line 1158
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    .restart local v11    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_a
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "THOUSANDS_SEPARATOR"

    .line 1159
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1160
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->thousandsSeparator:Ljava/lang/String;

    goto :goto_d

    .line 1161
    :cond_b
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "DECIMAL_POINT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1162
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->decimalPoint:Ljava/lang/String;

    goto :goto_d

    .line 1163
    :cond_c
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "INPUT_MESSAGE_ERROR_STYLE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1164
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->text_required:Ljava/lang/String;

    goto/16 :goto_d

    .line 1165
    :cond_d
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "CHARSET"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1166
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->defaultCharset:Ljava/lang/String;

    goto/16 :goto_d

    .line 1167
    :cond_e
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "PPI_BASELINE_RELATION"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1169
    :try_start_b
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/VTUserApplicationSmart;->ppiBaselineRelation:F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_d

    .line 1170
    :catch_a
    move-exception v19

    .line 1171
    .local v19, "nfe":Ljava/lang/NumberFormatException;
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid ppiBaselineRelation:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1173
    .end local v19    # "nfe":Ljava/lang/NumberFormatException;
    :cond_f
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "SYNCHRO_CONNECTION_TIMEOUT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1174
    const-string v23, "SYNCHRO_CONNECTION_TIMEOUT"

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1175
    :cond_10
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "CONNECTION_TIMEOUT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1177
    :try_start_c
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/VTUserApplicationSmart;->connectionTimeout:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_d

    .line 1178
    :catch_b
    move-exception v19

    .line 1179
    .restart local v19    # "nfe":Ljava/lang/NumberFormatException;
    const-string v23, "VTUserApplicationSmart"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid connectionTimeout:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1181
    .end local v19    # "nfe":Ljava/lang/NumberFormatException;
    :cond_11
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "SHOW_WAIT_DIALOG_AFTER_MILLIS"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1183
    :try_start_d
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/veritran/VTUserApplicationSmart;->showWaitDialogAfterMillis:J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_d

    .line 1184
    :catch_c
    move-exception v19

    .line 1185
    .restart local v19    # "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v24, -0x1

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnet/veritran/VTUserApplicationSmart;->showWaitDialogAfterMillis:J

    goto/16 :goto_d

    .line 1187
    .end local v19    # "nfe":Ljava/lang/NumberFormatException;
    :cond_12
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v23

    const-string v24, "PROCESSING_VIEW"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1188
    invoke-virtual {v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    goto/16 :goto_d

    .line 1192
    .end local v5    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->decimalPoint:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lnet/veritran/ard/ASRD;->setDecimalSeparator(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->thousandsSeparator:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lnet/veritran/ard/ASRD;->setThousandsSeparator(Ljava/lang/String;)V

    .line 1195
    const-string v23, "VTUserApplicationSmart"

    const-string v24, "Configuration loaded. Ready for navigation"

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->setResourcesLoaded(Z)V

    .line 1198
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->setConfigurationLoaded(Z)V

    .line 1200
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/model/Model;->configurationFinishesLoading()V

    .line 1202
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/veritran/VTUserApplicationSmart;->isUpdatingConfiguration:Z

    .line 1204
    const-string v23, "VTUserApplicationSmart"

    const-string v24, "Configuration loaded. Ready for navigation"

    invoke-static/range {v23 .. v24}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/model/Model;->defineCustomizedEncryptedRegisters()V

    .line 1206
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lnet/veritran/vtuserapplication/model/Model;->defineStaticallydEncryptedRegisters()V

    .line 1208
    const-string v23, "Previo NavigationStartAction"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->logMemory(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v23

    new-instance v24, Lnet/veritran/VTUserApplicationSmart$NavigationStartAction;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lnet/veritran/VTUserApplicationSmart$NavigationStartAction;-><init>(Lnet/veritran/VTUserApplicationSmart;)V

    invoke-virtual/range {v23 .. v24}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1027
    .end local v11    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v20    # "resourcesFolder":Ljava/io/File;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "isZipFile":Z
    .restart local v21    # "url":Ljava/net/URL;
    .restart local v22    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_d
    move-exception v6

    move-object v13, v14

    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 1014
    .end local v13    # "is":Ljava/io/InputStream;
    .local v6, "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "is":Ljava/io/InputStream;
    :catch_e
    move-exception v12

    move-object v13, v14

    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 987
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v6

    goto/16 :goto_4
.end method

.method public getConfigurationFontFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 2019
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationFontFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationLayouts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2284
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getConfigurationLayouts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2298
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lnet/veritran/VTUserApplicationSmart;->connectionTimeout:I

    return v0
.end method

.method public getConstant(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "propertyToGet"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    .line 610
    iget-object v6, p0, Lnet/veritran/VTUserApplicationSmart;->READ_PROPERTIES:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 611
    const-string v6, "PROD"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "PRODUCT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 613
    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/model/Model;->getConfigurableProductId()Ljava/lang/String;

    move-result-object v5

    .line 744
    :goto_0
    return-object v5

    .line 615
    :cond_1
    const-string v6, "NOW"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 617
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 618
    .local v2, "df":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 620
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v6, "TODAY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 622
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v2    # "df":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 625
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v6, "TOMORROW"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 627
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 628
    .restart local v2    # "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 629
    .local v0, "c":Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 630
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 632
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_4
    const-string v6, "YESTERDAY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 634
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 635
    .restart local v2    # "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 636
    .restart local v0    # "c":Ljava/util/Calendar;
    const/4 v6, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 637
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 639
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_5
    const-string v6, "CURRENTTIME"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 641
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "HHmmss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v2    # "df":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 644
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    :cond_6
    const-string v6, "EPOCH"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 646
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 647
    .restart local v0    # "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 649
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_7
    const-string v6, "MMWIDTH"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 651
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v6

    invoke-static {v6}, Lnet/veritran/utils/VTDisplayHelper;->getWidthMilimiter(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 653
    :cond_8
    const-string v6, "MMHEIGHT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 655
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v6

    invoke-static {v6}, Lnet/veritran/utils/VTDisplayHelper;->getHeightMilimiter(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 657
    :cond_9
    const-string v6, "PXWIDTH"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 659
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v6

    invoke-static {v6}, Lnet/veritran/utils/VTDisplayHelper;->getWidthPixel(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 661
    :cond_a
    const-string v6, "PXHEIGHT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 663
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v6

    invoke-static {v6}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 665
    :cond_b
    const-string v6, "ORIENTATION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 667
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    check-cast v1, Lnet/veritran/VTCommonActivity;

    .line 669
    .local v1, "commonActivity":Lnet/veritran/VTCommonActivity;
    invoke-static {v1}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v6

    invoke-static {v1}, Lnet/veritran/utils/VTDisplayHelper;->getWidthPixel(Landroid/content/Context;)I

    move-result v7

    if-ne v6, v7, :cond_c

    .line 671
    const-string v5, "SQUARE"

    goto/16 :goto_0

    .line 674
    :cond_c
    invoke-virtual {v1}, Lnet/veritran/VTCommonActivity;->getCurrentOrientation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 676
    const-string v5, "LANDSCAPE"

    goto/16 :goto_0

    .line 680
    :cond_d
    const-string v5, "PORTRAIT"

    goto/16 :goto_0

    .line 683
    .end local v1    # "commonActivity":Lnet/veritran/VTCommonActivity;
    :cond_e
    const-string v6, "PLATFORM"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 685
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    move-result-object v6

    invoke-interface {v6}, Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;->getApplicationBrand()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BB__"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 687
    const-string v5, "BB"

    goto/16 :goto_0

    .line 691
    :cond_f
    const-string v5, "ANDROID"

    goto/16 :goto_0

    .line 694
    :cond_10
    const-string v6, "APPVERSION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 697
    :try_start_0
    const-string v6, "RELEASE"

    .line 700
    invoke-virtual {p0, v6}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_0

    .line 701
    :catch_0
    move-exception v3

    .line 702
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 705
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    const-string v6, "CONFVERSION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 707
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    invoke-virtual {v6}, Lnet/veritran/vtuserapplication/model/Model;->getStartState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 709
    :cond_12
    const-string v6, "APPREVISION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 711
    const/4 v4, 0x0

    .line 713
    .local v4, "fullRelease":Ljava/lang/String;
    :try_start_1
    const-string v6, "RELEASE"

    .line 716
    invoke-virtual {p0, v6}, Lnet/veritran/VTUserApplicationSmart;->getVTConstant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 720
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 721
    .local v5, "subversionRelease":Ljava/lang/String;
    goto/16 :goto_0

    .line 717
    .end local v5    # "subversionRelease":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 718
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 723
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fullRelease":Ljava/lang/String;
    :cond_13
    const-string v6, "INTERNETCONNECTION"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 725
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->isInternetConnectionAvailable()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 727
    const-string v5, "1"

    goto/16 :goto_0

    .line 731
    :cond_14
    const-string v5, "0"

    goto/16 :goto_0

    .line 734
    :cond_15
    const-string v6, "PROCESSING_MESSAGE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 736
    const-string v6, "PROCESSING_MESSAGE"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lnet/veritran/VTUserApplicationSmart;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 738
    :cond_16
    const-string v6, "PROCESSING_TITLE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 740
    const-string v6, "PROCESSING_TITLE"

    const-string v7, ""

    invoke-virtual {p0, v6, v7}, Lnet/veritran/VTUserApplicationSmart;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 744
    :cond_17
    const-string v5, ""

    goto/16 :goto_0
.end method

.method public getCurrentActivity()Lnet/veritran/VTAbstractActivity;
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2085
    const/4 v0, 0x0

    .line 2088
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTAbstractActivity;

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 2219
    iget v0, p0, Lnet/veritran/VTUserApplicationSmart;->currentState:I

    return v0
.end method

.method public getCustomEncryptedRegistersFromConfiguration()[I
    .locals 10

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "encryptedRegisters":Ljava/lang/String;
    iget-object v7, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 368
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 370
    .local v0, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ENCRYPTED_REGISTERS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 371
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ENCRYPTED_TOKENS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 372
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CUSTOM_ENCRYPTED_REGISTERS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    :cond_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 378
    .end local v0    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_2
    if-eqz v1, :cond_3

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 380
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "registersArrayString":[Ljava/lang/String;
    array-length v7, v6

    new-array v5, v7, [I

    .line 382
    .local v5, "registersArrayInt":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_4

    .line 384
    :try_start_0
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v4

    .line 386
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const-string v7, "VTUserApplicationSmart"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid register:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 391
    .end local v2    # "i":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "registersArrayInt":[I
    .end local v6    # "registersArrayString":[Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    :cond_4
    return-object v5
.end method

.method public getDecimalPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->decimalPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->defaultCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getGenericLaunchParameters()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2898
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->genericLaunchParameters:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getGeoLocationLat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 766
    const-string v0, "LOCATION_LAT_ID"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lnet/veritran/VTUserApplicationSmart;->getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocationLong()Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    const-string v0, "LOCATION_LONG_ID"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lnet/veritran/VTUserApplicationSmart;->getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocationTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 782
    const-string v0, "LOCATION_TIMESTAMP_ID"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lnet/veritran/VTUserApplicationSmart;->getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHandler()Lnet/veritran/utils/ImageHandler;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->imageHandler:Lnet/veritran/utils/ImageHandler;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lnet/veritran/utils/ImageHandler;

    invoke-direct {v0}, Lnet/veritran/utils/ImageHandler;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->imageHandler:Lnet/veritran/utils/ImageHandler;

    .line 341
    :cond_0
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->imageHandler:Lnet/veritran/utils/ImageHandler;

    return-object v0
.end method

.method public getPPIBaselineRelation()F
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lnet/veritran/VTUserApplicationSmart;->ppiBaselineRelation:F

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameterId"    # Ljava/lang/String;

    .prologue
    .line 3159
    const-string v1, "SYNCHRO_CONNECTION_TIMEOUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3160
    const-string v1, "SYNCHRO_CONNECTION_TIMEOUT"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3173
    :goto_0
    return-object v1

    .line 3162
    :cond_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    if-eqz v1, :cond_2

    .line 3164
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 3166
    .local v0, "parameter":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3168
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3173
    .end local v0    # "parameter":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 3101
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart;->getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 4

    .prologue
    .line 754
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "getting Product"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v1, "PRODUCT_ID"

    const-string v2, "__"

    invoke-direct {p0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->getFromSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "productIdRestored":Ljava/lang/String;
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-object v0
.end method

.method public getReadOnlyProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3127
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->READ_ONLY_PROPERTIES:Ljava/util/List;

    return-object v0
.end method

.method public getScreenOrientation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2956
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    .line 2957
    .local v0, "commonActivity":Lnet/veritran/VTCommonActivity;
    invoke-static {v0}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lnet/veritran/utils/VTDisplayHelper;->getWidthPixel(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2959
    const-string v1, "SQUARE"

    .line 2968
    :goto_0
    return-object v1

    .line 2962
    :cond_0
    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->getCurrentOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2964
    const-string v1, "LANDSCAPE"

    goto :goto_0

    .line 2968
    :cond_1
    const-string v1, "PORTRAIT"

    goto :goto_0
.end method

.method public getSerializedConfigurationAppProperties(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1920
    const-string v5, "APPPROPERTIES"

    const-class v6, Ljava/lang/String;

    invoke-direct {p0, p1, v5, v6}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1922
    .local v0, "appPropertiesFlat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 1924
    .local v3, "ret":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1926
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1927
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1929
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1932
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public getSerializedConfigurationLayouts(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "LAYOUTS"

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;

    invoke-direct {p0, p1, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1851
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;>;"
    return-object v0
.end method

.method public getSerializedConfigurationParameter(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1864
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "PARAMS"

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-direct {p0, p1, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1866
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    return-object v0
.end method

.method public getSerializedConfigurationProcess(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    .locals 3
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1909
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;

    invoke-direct {p0, p2, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1911
    :catch_0
    move-exception v0

    .line 1913
    .local v0, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;->setPrintableError(Ljava/lang/String;)V

    .line 1914
    throw v0
.end method

.method public getSerializedConfigurationResponseCode(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResponseCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1893
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "RESPCODE"

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResponseCode;

    invoke-direct {p0, p1, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1895
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResponseCode;>;"
    return-object v0
.end method

.method public getSerializedConfigurationTheme(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1878
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "THEMES"

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    invoke-direct {p0, p1, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1880
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;>;"
    return-object v0
.end method

.method public getSerializedViews(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1835
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "VIEWS"

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-direct {p0, p1, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1837
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;>;"
    return-object v0
.end method

.method public getSerializedVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .locals 3
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "visualArea"    # Ljava/lang/String;
    .param p3, "sequence"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1817
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEQ-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {p0, p4, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->deserializeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1819
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;->setPrintableError(Ljava/lang/String;)V

    .line 1822
    throw v0
.end method

.method public getShowWaitDialogAfterMillis()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lnet/veritran/VTUserApplicationSmart;->showWaitDialogAfterMillis:J

    return-wide v0
.end method

.method public getSplashAppProperties()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3202
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getAppProperties()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getSplashConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3187
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0, p1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getConfigurationLayoutsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSplashTheme(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3191
    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getThemesResult()Ljava/util/List;

    move-result-object v2

    .line 3192
    .local v2, "themes":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    .line 3193
    .local v1, "t":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3194
    .local v0, "lName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3197
    .end local v0    # "lName":Ljava/lang/String;
    .end local v1    # "t":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplashView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 2310
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getViewsResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    return-object v0
.end method

.method public getStaticallyEncryptedRegistersFromConfiguration()[I
    .locals 10

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "encryptedRegisters":Ljava/lang/String;
    iget-object v7, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v7}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 400
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 401
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 402
    .local v0, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v7

    const-string v8, "STATIC_ENCRYPTED_REGISTERS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 403
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 408
    .end local v0    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_1
    if-eqz v1, :cond_2

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 410
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "registersArrayString":[Ljava/lang/String;
    array-length v7, v6

    new-array v5, v7, [I

    .line 412
    .local v5, "registersArrayInt":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_3

    .line 414
    :try_start_0
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :catch_0
    move-exception v4

    .line 416
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    const-string v7, "VTUserApplicationSmart"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid register:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 421
    .end local v2    # "i":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .end local v5    # "registersArrayInt":[I
    .end local v6    # "registersArrayString":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    :cond_3
    return-object v5
.end method

.method public getTextRequired()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->text_required:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2329
    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getThemesResult()Ljava/util/List;

    move-result-object v2

    .line 2330
    .local v2, "themes":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    .line 2331
    .local v1, "t":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2332
    .local v0, "lName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2335
    .end local v0    # "lName":Ljava/lang/String;
    .end local v1    # "t":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThousandsSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->thousandsSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVTConstant(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 2304
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0, p1, p2}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getViewsResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    return-object v0
.end method

.method public getXMLDownloadURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2815
    const-string v1, "__RES__/conf/__CLIENT_____PRODUCT__/__CONF_TYPE__/configuration___START_STATE__.xml"

    invoke-static {v1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2828
    .local v0, "url":Ljava/lang/String;
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXMLDownloadURL(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    return-object v0
.end method

.method public getZIPDownloadURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2834
    const-string v1, "__RES__/conf/__CLIENT_____PRODUCT__/__CONF_TYPE__/configuration___START_STATE__.xml.gz"

    invoke-static {v1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2847
    .local v0, "url":Ljava/lang/String;
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZIPDownloadURL(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    return-object v0
.end method

.method public initializeSavedSessionImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 3137
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/utils/ImageHandler;->initializeSavedSessionImage(Ljava/lang/String;)V

    .line 3138
    return-void
.end method

.method public isInternetConnectionAvailable()Z
    .locals 1

    .prologue
    .line 2973
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/utils/InternetConnection;->isOnline(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 2215
    iget-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart;->loggedIn:Z

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2205
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart;->loggedIn:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2209
    :goto_0
    return-void

    .line 2207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public logout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2228
    iput-boolean v2, p0, Lnet/veritran/VTUserApplicationSmart;->loggedIn:Z

    .line 2229
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 2230
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTAbstractActivity;

    .line 2231
    .local v0, "current":Lnet/veritran/VTAbstractActivity;
    if-eqz v0, :cond_0

    .line 2233
    invoke-virtual {v0}, Lnet/veritran/VTAbstractActivity;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2232
    invoke-virtual {v0, v2, v1}, Lnet/veritran/VTAbstractActivity;->changeState(ILandroid/content/Intent;)V

    .line 2236
    .end local v0    # "current":Lnet/veritran/VTAbstractActivity;
    :cond_0
    return-void
.end method

.method public noSessionTimedOut()V
    .locals 5

    .prologue
    .line 2728
    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2729
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2730
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 2731
    .local v0, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEXT_ON_TIMEOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2733
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 2734
    .local v2, "notifyTimeout":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2745
    .end local v0    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    .end local v2    # "notifyTimeout":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2736
    .restart local v0    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    .restart local v2    # "notifyTimeout":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    check-cast v3, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v3}, Lnet/veritran/VTCommonActivity;->cleanSessionDialogs()V

    .line 2737
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    new-instance v4, Lnet/veritran/VTUserApplicationSmart$ProcessAction;

    invoke-direct {v4, p0, v2}, Lnet/veritran/VTUserApplicationSmart$ProcessAction;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 2077
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2078
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->exit()V

    .line 2079
    return-void
.end method

.method public processAction(Ljava/lang/String;)V
    .locals 6
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 2864
    const/4 v1, 0x0

    .line 2866
    .local v1, "activity":Lnet/veritran/VTCommonActivity;
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lnet/veritran/VTCommonActivity;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2871
    invoke-virtual {v1, p1}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 2872
    :goto_0
    return-void

    .line 2867
    :catch_0
    move-exception v2

    .line 2868
    .local v2, "cce":Ljava/lang/ClassCastException;
    const-string v3, "VTUserApplicationSmart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid activity state for process call (process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processGenericLaunchInitialization(Landroid/app/Activity;)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3241
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 3242
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/model/Model;->sessionClean()V

    .line 3244
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 3245
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3247
    .local v2, "action":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3248
    .local v4, "data":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 3249
    .local v10, "src":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 3250
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 3251
    const-string v14, "src"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3253
    :cond_1
    if-eqz v10, :cond_2

    const-string v14, "push"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v11, 0x1

    .line 3256
    .local v11, "startedByPush":Z
    :goto_0
    if-eqz v4, :cond_5

    .line 3257
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 3258
    .local v6, "host":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 3260
    .local v9, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v13

    .line 3261
    .local v13, "vars":Ljava/lang/String;
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 3262
    .local v5, "genericLaunchParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v12, v15, v14

    .line 3263
    .local v12, "var":Ljava/lang/String;
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "var=["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3264
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3265
    .local v8, "keyValParam":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v17, v8, v17

    const/16 v18, 0x1

    aget-object v18, v8, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3262
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 3253
    .end local v5    # "genericLaunchParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "host":Ljava/lang/String;
    .end local v8    # "keyValParam":[Ljava/lang/String;
    .end local v9    # "scheme":Ljava/lang/String;
    .end local v11    # "startedByPush":Z
    .end local v12    # "var":Ljava/lang/String;
    .end local v13    # "vars":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 3267
    .restart local v5    # "genericLaunchParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v9    # "scheme":Ljava/lang/String;
    .restart local v11    # "startedByPush":Z
    .restart local v13    # "vars":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v11, v15, v5}, Lnet/veritran/VTUserApplicationSmart;->wasStartedBySpecialLaunch(ZZLjava/util/Hashtable;)V

    .line 3268
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->tryStartSpecialLaunchViewAlreadyStarted()V

    .line 3275
    .end local v5    # "genericLaunchParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "host":Ljava/lang/String;
    .end local v9    # "scheme":Ljava/lang/String;
    .end local v13    # "vars":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 3270
    :cond_5
    if-eqz v11, :cond_4

    .line 3272
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v11, v15, v0}, Lnet/veritran/VTUserApplicationSmart;->wasStartedBySpecialLaunch(ZZLjava/util/Hashtable;)V

    .line 3273
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v14

    invoke-virtual {v14}, Lnet/veritran/VTUserApplicationSmart;->tryStartPushViewAlreadyStarted()V

    goto :goto_2
.end method

.method public putFontBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 9
    .param p1, "idRes"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 2024
    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationFontFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2026
    .local v5, "pathFont":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2027
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 2030
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2032
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .local v2, "fileOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2034
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {p2, v4}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 2036
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2044
    if-eqz v4, :cond_0

    .line 2047
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2053
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 2056
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 2062
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 2048
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 2049
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "VTUserApplicationSmart"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2057
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2058
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "VTUserApplicationSmart"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 2059
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 2038
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2040
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "VTUserApplicationSmart"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2044
    if-eqz v3, :cond_2

    .line 2047
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2053
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 2056
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 2057
    :catch_3
    move-exception v0

    .line 2058
    const-string v6, "VTUserApplicationSmart"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2048
    :catch_4
    move-exception v0

    .line 2049
    const-string v6, "VTUserApplicationSmart"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2044
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_3

    .line 2047
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2053
    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 2056
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2059
    :cond_4
    :goto_6
    throw v6

    .line 2048
    :catch_5
    move-exception v0

    .line 2049
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "VTUserApplicationSmart"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2057
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 2058
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "VTUserApplicationSmart"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2044
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 2038
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public putSessionImage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 2065
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2066
    .local v0, "b":Landroid/graphics/Bitmap;
    const-string v1, "VTUserApplicationSmart"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveImageFileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart;->imageHandler:Lnet/veritran/utils/ImageHandler;

    invoke-virtual {v1, p1, v0}, Lnet/veritran/utils/ImageHandler;->putSessionImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 2068
    return-void
.end method

.method public putSessionImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "rsrcid"    # Ljava/lang/String;
    .param p2, "currentData"    # Ljava/lang/StringBuffer;

    .prologue
    .line 3147
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/veritran/utils/ImageHandler;->putSessionImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 3148
    return-void
.end method

.method public putSessionResourceBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 10
    .param p1, "idRes"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1964
    invoke-virtual {p0, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1966
    .local v5, "outputDir":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1967
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1970
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    const-string v7, "tmp"

    const-string v8, ".tmp"

    invoke-static {v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1971
    .local v6, "tempFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .local v2, "fileOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1975
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {p2, v4}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 1977
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 1979
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lnet/veritran/vtuserapplication/utils/VTTarUtils;->untarFile(Ljava/io/File;Ljava/io/File;Z)Z

    .line 1981
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1990
    if-eqz v4, :cond_0

    .line 1993
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2000
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    .line 2003
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 2010
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .end local v6    # "tempFile":Ljava/io/File;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 1994
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1995
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "VTUserApplicationSmart"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2004
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2005
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "VTUserApplicationSmart"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 2007
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1984
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "tempFile":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 1986
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v7, "VTUserApplicationSmart"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1990
    if-eqz v3, :cond_2

    .line 1993
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 2000
    :cond_2
    :goto_3
    if-eqz v1, :cond_1

    .line 2003
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 2004
    :catch_3
    move-exception v0

    .line 2005
    const-string v7, "VTUserApplicationSmart"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1994
    :catch_4
    move-exception v0

    .line 1995
    const-string v7, "VTUserApplicationSmart"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1990
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_3

    .line 1993
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2000
    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 2003
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2007
    :cond_4
    :goto_6
    throw v7

    .line 1994
    :catch_5
    move-exception v0

    .line 1995
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "VTUserApplicationSmart"

    const-string v9, "Catched exception empty (fortify)"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2004
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 2005
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "VTUserApplicationSmart"

    const-string v9, "Catched exception empty (fortify)"

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1990
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v6    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1984
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public putSvgImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "rsrcid"    # Ljava/lang/String;
    .param p2, "currentData"    # Ljava/lang/StringBuffer;

    .prologue
    .line 3142
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/veritran/utils/ImageHandler;->putSvgImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 3143
    return-void
.end method

.method public removePreference(Ljava/lang/String;)V
    .locals 3
    .param p1, "prefName"    # Ljava/lang/String;

    .prologue
    .line 3112
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/veritran/VTAbstractActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3113
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3114
    return-void
.end method

.method public resolveParametersSplash()V
    .locals 6

    .prologue
    .line 3207
    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->cmSplash:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v3

    .line 3208
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3209
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 3211
    .local v0, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HIDE_BACK_BUTTONS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3213
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3214
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/veritran/VTUserApplicationSmart;->hidesBackButton:Z

    goto :goto_0

    .line 3217
    :cond_1
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "THOUSANDS_SEPARATOR"

    .line 3218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3219
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->thousandsSeparator:Ljava/lang/String;

    goto :goto_0

    .line 3220
    :cond_2
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DECIMAL_POINT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3221
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->decimalPoint:Ljava/lang/String;

    goto :goto_0

    .line 3222
    :cond_3
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INPUT_MESSAGE_ERROR_STYLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3223
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->text_required:Ljava/lang/String;

    goto :goto_0

    .line 3224
    :cond_4
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CHARSET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3225
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->defaultCharset:Ljava/lang/String;

    goto :goto_0

    .line 3226
    :cond_5
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PPI_BASELINE_RELATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3228
    :try_start_0
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lnet/veritran/VTUserApplicationSmart;->ppiBaselineRelation:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3229
    :catch_0
    move-exception v2

    .line 3230
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v3, "VTUserApplicationSmart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid ppiBaselineRelation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3232
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PROCESSING_VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3233
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    goto/16 :goto_0

    .line 3238
    .end local v0    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_7
    return-void
.end method

.method public restartApplication()V
    .locals 2

    .prologue
    .line 2903
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "RESTART_APPLICATION"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/veritran/VTUserApplicationSmart;->downloadXMLConfigurationFromModel(Z)V

    .line 2905
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->gotoState(I)V

    .line 2906
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2948
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2949
    return-void
.end method

.method public serializeConfigurationAppProperties(Ljava/util/Hashtable;Ljava/lang/String;)Z
    .locals 4
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1938
    .local p1, "appProperties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1939
    .local v0, "appPropertiesFlat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1941
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1945
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "APPPROPERTIES"

    invoke-direct {p0, p2, v2, v0}, Lnet/veritran/VTUserApplicationSmart;->serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    return v2
.end method

.method public serializeConfigurationLayouts(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1842
    .local p1, "layouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationLayout;>;"
    const-string v1, "LAYOUTS"

    invoke-direct {p0, p2, v1, p1}, Lnet/veritran/VTUserApplicationSmart;->serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1844
    .local v0, "res":Z
    return v0
.end method

.method public serializeConfigurationParameter(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1857
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    const-string v1, "PARAMS"

    invoke-direct {p0, p2, v1, p1}, Lnet/veritran/VTUserApplicationSmart;->serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1859
    .local v0, "res":Z
    return v0
.end method

.method public serializeConfigurationProcess(Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;Ljava/lang/String;)Z
    .locals 3
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "process"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, p2}, Lnet/veritran/VTUserApplicationSmart;->serializeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 1902
    .local v0, "res":Z
    return v0
.end method

.method public serializeConfigurationResponseCode(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResponseCode;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1886
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationResponseCode;>;"
    const-string v1, "RESPCODE"

    invoke-direct {p0, p2, v1, p1}, Lnet/veritran/VTUserApplicationSmart;->serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1888
    .local v0, "res":Z
    return v0
.end method

.method public serializeConfigurationTheme(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1871
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;>;"
    const-string v1, "THEMES"

    invoke-direct {p0, p2, v1, p1}, Lnet/veritran/VTUserApplicationSmart;->serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1873
    .local v0, "res":Z
    return v0
.end method

.method public serializeConfigurationVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewId"    # Ljava/lang/String;
    .param p2, "visualArea"    # Ljava/lang/String;
    .param p3, "sequence"    # Ljava/lang/String;
    .param p4, "component"    # Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    .param p5, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEQ-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0, p4}, Lnet/veritran/VTUserApplicationSmart;->serializeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public serializeViews(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1828
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;>;"
    const-string v1, "VIEWS"

    invoke-direct {p0, p2, v1, p1}, Lnet/veritran/VTUserApplicationSmart;->serializeListObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 1830
    .local v0, "res":Z
    return v0
.end method

.method public sessionTimedOut()V
    .locals 5

    .prologue
    .line 2710
    iget-object v2, p0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2711
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    .line 2713
    .local v0, "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NEXT_ON_SESSION_TIMEOUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2715
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    check-cast v2, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v2}, Lnet/veritran/VTCommonActivity;->cleanSessionDialogs()V

    .line 2716
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    new-instance v3, Lnet/veritran/VTUserApplicationSmart$ProcessAction;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lnet/veritran/VTUserApplicationSmart$ProcessAction;-><init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2723
    .end local v0    # "cp":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;
    :cond_1
    return-void
.end method

.method public setBadgeNumber(I)V
    .locals 3
    .param p1, "badgeNumber"    # I

    .prologue
    .line 798
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "setting Badge Number"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 802
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "BADGE_NUMBER"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 804
    invoke-direct {p0, p1}, Lnet/veritran/VTUserApplicationSmart;->updateAppIconBadge(I)V

    .line 805
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2856
    if-nez p1, :cond_0

    .line 2857
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->bundle:Landroid/os/Bundle;

    .line 2861
    :goto_0
    return-void

    .line 2859
    :cond_0
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart;->bundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setConfigurationLoaded(Z)V
    .locals 4
    .param p1, "loaded"    # Z

    .prologue
    .line 464
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 465
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CONFIGURATION_LOADED"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 469
    return-void
.end method

.method public setCurrentActivity(Lnet/veritran/VTAbstractActivity;)V
    .locals 12
    .param p1, "activity"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v9

    invoke-virtual {v9}, Lnet/veritran/VTUserApplicationSmart;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v4    # "packageName":Ljava/lang/String;
    .local v1, "flags":I
    :goto_0
    const-string v9, "LOG_LEVEL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_2

    move v2, v7

    .line 508
    .local v2, "isDebugMode":Z
    :goto_1
    if-nez v2, :cond_0

    .line 509
    const-string v9, "LOG_LEVEL"

    const-string v10, "Logging disabled"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget v9, Lnet/veritran/vtuserapplication/utils/VTLog;->LOG_LEVEL_NONE:I

    sput v9, Lnet/veritran/vtuserapplication/utils/VTLog;->logLevel:I

    .line 513
    :cond_0
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 514
    const-string v9, "VTUserApplicationSmart"

    const-string v10, "Check for configuration?"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v9, p0, Lnet/veritran/VTUserApplicationSmart;->startLoadingConfiguration:Z

    if-nez v9, :cond_1

    .line 516
    iput-boolean v7, p0, Lnet/veritran/VTUserApplicationSmart;->startLoadingConfiguration:Z

    .line 517
    const-string v9, "VTUserApplicationSmart"

    const-string v10, "Check for configuration ok"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8}, Lnet/veritran/VTUserApplicationSmart;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 522
    .local v5, "pref":Landroid/content/SharedPreferences;
    const-string v9, "MICRO_EMU_CONVERTED"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 523
    .local v0, "alreadyConverted":Z
    if-nez v0, :cond_4

    .line 525
    const-string v9, "VTUserApplicationSmart"

    const-string v10, "Start converting MicroEmu repository"

    invoke-static {v9, v10}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v6, Lnet/veritran/utils/VTRecoverMicroEmulator;

    invoke-direct {v6, p1}, Lnet/veritran/utils/VTRecoverMicroEmulator;-><init>(Landroid/app/Activity;)V

    .line 528
    .local v6, "rec":Lnet/veritran/utils/VTRecoverMicroEmulator;
    invoke-virtual {v6}, Lnet/veritran/utils/VTRecoverMicroEmulator;->hadError()Z

    move-result v9

    if-nez v9, :cond_3

    .line 531
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "MICRO_EMU_CONVERTED"

    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    const-string v7, "VTUserApplicationSmart"

    const-string v9, "MicroEmu Converted OK"

    invoke-static {v7, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v6    # "rec":Lnet/veritran/utils/VTRecoverMicroEmulator;
    :goto_2
    new-instance v7, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v9

    invoke-direct {v7, p0, v9}, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;-><init>(Lnet/veritran/VTUserApplicationSmart;Lnet/veritran/VTAbstractActivity;)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lnet/veritran/VTUserApplicationSmart$ModelSetupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 548
    .end local v0    # "alreadyConverted":Z
    .end local v5    # "pref":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 503
    .end local v1    # "flags":I
    .end local v2    # "isDebugMode":Z
    :catch_0
    move-exception v3

    .line 504
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "flags":I
    goto/16 :goto_0

    .end local v3    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v2, v8

    .line 507
    goto :goto_1

    .line 536
    .restart local v0    # "alreadyConverted":Z
    .restart local v2    # "isDebugMode":Z
    .restart local v5    # "pref":Landroid/content/SharedPreferences;
    .restart local v6    # "rec":Lnet/veritran/utils/VTRecoverMicroEmulator;
    :cond_3
    const-string v7, "VTUserApplicationSmart"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error converting MicroEmu repository: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lnet/veritran/utils/VTRecoverMicroEmulator;->getError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 541
    .end local v6    # "rec":Lnet/veritran/utils/VTRecoverMicroEmulator;
    :cond_4
    const-string v7, "VTUserApplicationSmart"

    const-string v9, "It didn\'t try to convert MicroEmu because it was already converted"

    invoke-static {v7, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setCurrentActivitySplash(Lnet/veritran/VTAbstractActivity;)V
    .locals 1
    .param p1, "activity"    # Lnet/veritran/VTAbstractActivity;

    .prologue
    .line 491
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 492
    return-void
.end method

.method public setCurrentState(I)V
    .locals 3
    .param p1, "currentState"    # I

    .prologue
    .line 2223
    const-string v0, "VTUserApplicationSmart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iput p1, p0, Lnet/veritran/VTUserApplicationSmart;->currentState:I

    .line 2225
    return-void
.end method

.method public setGeoLocationLat(Ljava/lang/String;)V
    .locals 1
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 762
    const-string v0, "LOCATION_LAT_ID"

    invoke-direct {p0, v0, p1}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public setGeoLocationLong(Ljava/lang/String;)V
    .locals 1
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 770
    const-string v0, "LOCATION_LONG_ID"

    invoke-direct {p0, v0, p1}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public setGeoLocationTimestamp(Ljava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string v0, "LOCATION_TIMESTAMP_ID"

    invoke-direct {p0, v0, p1}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefName"    # Ljava/lang/String;
    .param p2, "prefValue"    # Ljava/lang/String;

    .prologue
    .line 3106
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 3
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 748
    const-string v0, "VTUserApplicationSmart"

    const-string v1, "setting Product"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "VTUserApplicationSmart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "PRODUCT_ID"

    invoke-direct {p0, v0, p1}, Lnet/veritran/VTUserApplicationSmart;->saveInSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public setResourcesLoaded(Z)V
    .locals 5
    .param p1, "loaded"    # Z

    .prologue
    .line 447
    const-string v2, "VTUserApplicationSmart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESOURCESLOADED: SET: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 449
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 450
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CONFIGURATION_RESOURCES_LOADED"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    return-void
.end method

.method public setupModel()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0xc8

    const/4 v8, 0x1

    .line 1220
    new-instance v3, Lnet/veritran/android/implementation/AndroidUILibraryImplementation;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidUILibraryImplementation;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setUILibrary(Lnet/veritran/vtuserapplication/ui/UILibraryInterface;)V

    .line 1221
    invoke-static {p0}, Lnet/veritran/vtuserapplication/model/Setup;->setApplicationSmartImplementation(Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;)V

    .line 1222
    new-instance v3, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/veritran/android/implementation/AndroidApplicationHelperImplementation;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setApplicationHelper(Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;)V

    .line 1223
    new-instance v3, Lnet/veritran/android/implementation/AndroidRepositoryFactoryImplementation;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/veritran/android/implementation/AndroidRepositoryFactoryImplementation;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setPersistenceManager(Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;)V

    .line 1224
    new-instance v3, Lnet/veritran/android/implementation/AndroidSecurityLibraryImplementation;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidSecurityLibraryImplementation;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setSecurityLibrary(Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;)V

    .line 1225
    sget-object v3, Lnet/veritran/VTUserApplicationSmart;->resourcesLoader:Lnet/veritran/android/implementation/AndroidResourcesLoaderImplementation;

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setResourcesLoader(Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;)V

    .line 1226
    new-instance v3, Lnet/veritran/android/implementation/AndroidConnectionManagerImplementation;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidConnectionManagerImplementation;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setConnectionManager(Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;)V

    .line 1227
    new-instance v3, Lnet/veritran/android/implementation/AndroidVTDialImplementation;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidVTDialImplementation;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setVTDialImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V

    .line 1228
    new-instance v3, Lnet/veritran/android/implementation/AndroidSMSStateImplementation;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidSMSStateImplementation;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setSMSStateImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V

    .line 1229
    new-instance v3, Lnet/veritran/android/implementation/AndroidVTServiceImplementation;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidVTServiceImplementation;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setVTServiceImplementation(Lnet/veritran/vtuserapplication/processes/VTServiceInterface;)V

    .line 1230
    new-instance v3, Lnet/veritran/android/implementation/AndroidSAXParser;

    invoke-direct {v3}, Lnet/veritran/android/implementation/AndroidSAXParser;-><init>()V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setSAXParserImplementation(Lnet/veritran/vtuserapplication/model/SAXParserInterface;)V

    .line 1231
    new-instance v3, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setGeoLocalizationLibraryImplementation(Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;)V

    .line 1232
    invoke-static {}, Lnet/veritran/android/implementation/push/PushLibrary;->getInstance()Lnet/veritran/android/implementation/push/PushLibrary;

    move-result-object v3

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setPushLibraryImplementation(Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;)V

    .line 1233
    invoke-static {p0}, Lnet/veritran/android/implementation/share/ShareLibrary;->getInstance(Landroid/app/Application;)Lnet/veritran/android/implementation/share/ShareLibrary;

    move-result-object v3

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setShareLibraryImplementation(Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;)V

    .line 1234
    invoke-static {p0}, Lnet/veritran/android/implementation/photo/PhotoLibrary;->getInstance(Landroid/app/Application;)Lnet/veritran/android/implementation/photo/PhotoLibrary;

    move-result-object v3

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setPhotoLibraryImplementation(Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;)V

    .line 1236
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 1237
    new-instance v3, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/veritran/android/implementation/fingerprint/FingerprintLibrary;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setFingerprintImplementation(Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;)V

    .line 1242
    :goto_0
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    check-cast v3, Lnet/veritran/VTCommonActivity;

    invoke-virtual {p0, v3}, Lnet/veritran/VTUserApplicationSmart;->startUpApplication(Lnet/veritran/VTCommonActivity;)V

    .line 1244
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    new-instance v4, Lnet/veritran/android/implementation/AndroidStateChangedListener;

    invoke-direct {v4}, Lnet/veritran/android/implementation/AndroidStateChangedListener;-><init>()V

    invoke-virtual {v3, v4}, Lnet/veritran/vtuserapplication/model/Model;->setStateChangedListener(Lnet/veritran/vtuserapplication/model/StateChangedListener;)V

    .line 1246
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/model/Model;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 1247
    .local v2, "prodId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GTWH"

    .line 1248
    invoke-virtual {p0, v2, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GTWP"

    .line 1251
    invoke-virtual {p0, v2, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GTWF"

    .line 1254
    invoke-virtual {p0, v2, v4}, Lnet/veritran/VTUserApplicationSmart;->getVTConstantEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "gatewayURL":Ljava/lang/String;
    const-string v3, "VTUserApplicationSmart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gatewayURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/veritran/vtuserapplication/model/Model;->setGatewayURL(Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/model/Model;->run()V

    .line 1282
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/vtuserapplication/model/Model;->debugRegisters()V

    .line 1284
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v3

    invoke-virtual {v3, v9}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1285
    const-string v3, "VTUserApplicationSmart"

    const-string v4, "Got Model Exception"

    invoke-static {v3, v4}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iput-boolean v8, p0, Lnet/veritran/VTUserApplicationSmart;->finishLoadingConfiguration:Z

    .line 1291
    const-string v3, "%s (ua%s)%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    const/16 v7, 0xc9

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v6

    const/16 v7, 0xca

    invoke-virtual {v6, v7}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1239
    .end local v0    # "gatewayURL":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "prodId":Ljava/lang/String;
    :cond_0
    new-instance v3, Lnet/veritran/android/implementation/fingerprint/FingerprintDummyLibrary;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/veritran/android/implementation/fingerprint/FingerprintDummyLibrary;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lnet/veritran/vtuserapplication/model/Setup;->setFingerprintImplementation(Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;)V

    goto/16 :goto_0

    .line 1301
    .restart local v0    # "gatewayURL":Ljava/lang/String;
    .restart local v2    # "prodId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public shouldLoadResources()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-direct {p0}, Lnet/veritran/VTUserApplicationSmart;->shouldLoadConfiguration()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    :goto_0
    return v1

    .line 436
    :cond_0
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lnet/veritran/VTUserApplicationSmart;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 437
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "CONFIGURATION_RESOURCES_LOADED"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 440
    .local v1, "res":Z
    :goto_1
    const-string v2, "VTUserApplicationSmart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESOURCESLOADED: GET: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "res":Z
    :cond_1
    move v1, v2

    .line 437
    goto :goto_1
.end method

.method public showApplicationError(I)V
    .locals 2
    .param p1, "errorId"    # I

    .prologue
    .line 2159
    new-instance v0, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;-><init>(Lnet/veritran/VTUserApplicationSmart;ILnet/veritran/VTAbstractActivity;)V

    .line 2160
    .local v0, "showDialog":Lnet/veritran/VTUserApplicationSmart$ShowApplicationErrorDialog;
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2161
    return-void
.end method

.method public showDialog(Lnet/veritran/VTAbstractActivity;I)V
    .locals 3
    .param p1, "activity"    # Lnet/veritran/VTAbstractActivity;
    .param p2, "id"    # I

    .prologue
    .line 2092
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "show dialog"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    if-eqz p1, :cond_0

    .line 2094
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "Got Activity to show dialog"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    new-instance v0, Lnet/veritran/VTUserApplicationSmart$ShowDialog;

    invoke-direct {v0, p0, p1, p2}, Lnet/veritran/VTUserApplicationSmart$ShowDialog;-><init>(Lnet/veritran/VTUserApplicationSmart;Landroid/app/Activity;I)V

    .line 2096
    .local v0, "showDialog":Lnet/veritran/VTUserApplicationSmart$ShowDialog;
    invoke-virtual {p1, v0}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2098
    .end local v0    # "showDialog":Lnet/veritran/VTUserApplicationSmart$ShowDialog;
    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 22
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "close"    # Z
    .param p5, "restart"    # Z
    .param p6, "update"    # Z

    .prologue
    .line 2981
    const/16 v18, 0x0

    .line 2983
    .local v18, "showCustomMessage":Z
    const-string v19, "VTUserApplicationSmart"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "showMessage:: dialogid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";title="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";message="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    const/4 v7, 0x0

    .line 2986
    .local v7, "cvcl":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    const/4 v5, 0x0

    .line 2987
    .local v5, "customView":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2988
    .local v6, "customVisualArea":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2990
    .local v4, "customSequence":Ljava/lang/String;
    const-string v19, "VTUserApplicationSmart"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "showMessage:: processingParameter: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->cm:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->processingPopupViewParameter:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v16

    .line 2996
    .local v16, "processingPopupViewResolved":Ljava/lang/String;
    const-string v19, "|"

    invoke-static/range {v19 .. v19}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2998
    .local v15, "processingPopupData":[Ljava/lang/String;
    const-string v19, "VTUserApplicationSmart"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "showMessage:: processingDataLength: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v15

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 3002
    const/16 v19, 0x0

    aget-object v5, v15, v19

    .line 3003
    const/16 v19, 0x1

    aget-object v6, v15, v19

    .line 3004
    const/16 v19, 0x2

    aget-object v4, v15, v19

    .line 3008
    :try_start_0
    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v6, v4, v1}, Lnet/veritran/VTUserApplicationSmart;->getSerializedVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 3015
    :goto_0
    if-eqz v7, :cond_1

    const/16 v18, 0x1

    .line 3020
    .end local v15    # "processingPopupData":[Ljava/lang/String;
    .end local v16    # "processingPopupViewResolved":Ljava/lang/String;
    :cond_0
    :goto_1
    if-nez v18, :cond_2

    .line 3022
    const-string v19, "VTUserApplicationSmart"

    const-string v20, "showMessage:: showing standard message"

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v19

    .line 3024
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    .line 3028
    .local v8, "dialog":Landroid/app/ProgressDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->dialogs:Ljava/util/Hashtable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    .end local v8    # "dialog":Landroid/app/ProgressDialog;
    :goto_2
    return-void

    .line 3010
    .restart local v15    # "processingPopupData":[Ljava/lang/String;
    .restart local v16    # "processingPopupViewResolved":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3012
    .local v9, "ex":Ljava/lang/Exception;
    const-string v19, "VTUserApplicationSmart"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Problems deserializing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3015
    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 3032
    .end local v15    # "processingPopupData":[Ljava/lang/String;
    .end local v16    # "processingPopupViewResolved":Ljava/lang/String;
    :cond_2
    const-string v19, "VTUserApplicationSmart"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "showMessage:: showing custom message: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-static {}, Lnet/veritran/ThemeManager;->getTheme()Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    move-result-object v3

    .line 3036
    .local v3, "currentTheme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    sget-object v19, Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lnet/veritran/VTUserApplicationSmart;->getView(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    move-result-object v14

    .line 3037
    .local v14, "popupView":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    invoke-virtual {v14}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getThemeName()Ljava/lang/String;

    move-result-object v17

    .line 3038
    .local v17, "sThemeName":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v17

    .line 3039
    sget-object v19, Lnet/veritran/VTUserApplicationSmart;->application:Lnet/veritran/VTUserApplicationSmart;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/veritran/VTUserApplicationSmart;->getTheme(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;

    move-result-object v13

    .line 3040
    .local v13, "popupTheme":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;
    invoke-static {v13}, Lnet/veritran/ThemeManager;->setTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;)V

    .line 3042
    new-instance v10, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;

    invoke-direct {v10}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;-><init>()V

    .line 3043
    .local v10, "p":Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;
    const-string v19, "height"

    const-string v20, "100"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v19, "width"

    const-string v20, "100"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v10, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    .line 3048
    const-string v19, "PROCESSING_TITLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    const-string v19, "PROCESSING_MESSAGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lnet/veritran/VTUserApplicationSmart;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    new-instance v12, Lnet/veritran/component/VTPopupComponent;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v19

    check-cast v19, Lnet/veritran/VTCommonActivity;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lnet/veritran/component/VTPopupComponent;-><init>(Lnet/veritran/VTCommonActivity;Z)V

    .line 3053
    .local v12, "popupComponent":Lnet/veritran/component/VTPopupComponent;
    invoke-virtual {v12, v10}, Lnet/veritran/component/VTPopupComponent;->setComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;)V

    .line 3054
    invoke-virtual {v12}, Lnet/veritran/component/VTPopupComponent;->init()V

    .line 3056
    invoke-virtual {v12}, Lnet/veritran/component/VTPopupComponent;->getVTPopup()Lnet/veritran/component/VTPopup;

    move-result-object v11

    .line 3058
    .local v11, "popup":Lnet/veritran/component/VTPopup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/VTUserApplicationSmart;->popupsProcessing:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3060
    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Lnet/veritran/component/VTPopup;->setCancelable(Z)V

    .line 3062
    invoke-virtual {v11}, Lnet/veritran/component/VTPopup;->show()V

    .line 3064
    invoke-static {v3}, Lnet/veritran/ThemeManager;->setTheme(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationTheme;)V

    goto/16 :goto_2
.end method

.method public abstract startUpApplication(Lnet/veritran/VTCommonActivity;)V
.end method

.method public startedByGenericLaunch()Z
    .locals 1

    .prologue
    .line 2894
    iget-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart;->startedByGenericLaunch:Z

    return v0
.end method

.method public startedByPushNotification()Z
    .locals 1

    .prologue
    .line 2890
    iget-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart;->startedByPushNotification:Z

    return v0
.end method

.method public startingApplication()V
    .locals 6

    .prologue
    .line 893
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/Model;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "prodId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_vtua_env_gateway_host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getEnvironmentResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 897
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_vtua_env_gateway_path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getEnvironmentResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 899
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_vtua_env_gateway_file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;->getEnvironmentResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "gatewayURL":Ljava/lang/String;
    const-string v2, "VTUserApplicationSmart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gatewayURL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->setGatewayURL(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v2

    check-cast v2, Lnet/veritran/VTCommonActivity;

    const-string v3, "_CONFUPDATE"

    invoke-virtual {v2, v3}, Lnet/veritran/VTCommonActivity;->processAction(Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public tryStartPushViewAlreadyStarted()V
    .locals 1

    .prologue
    .line 349
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->navigationStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tryStartSpecialLaunchViewAlreadyStarted()V
    .locals 1

    .prologue
    .line 359
    :try_start_0
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    check-cast v0, Lnet/veritran/VTCommonActivity;

    invoke-virtual {v0}, Lnet/veritran/VTCommonActivity;->navigationStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateApplication(Z)V
    .locals 2
    .param p1, "showMessage"    # Z

    .prologue
    .line 2909
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v0

    new-instance v1, Lnet/veritran/VTUserApplicationSmart$2;

    invoke-direct {v1, p0, p1}, Lnet/veritran/VTUserApplicationSmart$2;-><init>(Lnet/veritran/VTUserApplicationSmart;Z)V

    invoke-virtual {v0, v1}, Lnet/veritran/VTAbstractActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2945
    return-void
.end method

.method public updateApplicationSendToStore()V
    .locals 5

    .prologue
    .line 2773
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2777
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v3, "__RES__"

    invoke-static {v3}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2778
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/veritran/VTAbstractActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    :goto_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->closeApplication()V

    .line 2812
    return-void

    .line 2780
    :catch_0
    move-exception v1

    .line 2783
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2784
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/veritran/VTAbstractActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2785
    :catch_1
    move-exception v0

    .line 2786
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2787
    invoke-virtual {p0}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/veritran/VTAbstractActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public wasStartedByPushNotification(Z)V
    .locals 0
    .param p1, "startedByPush"    # Z

    .prologue
    .line 2878
    iput-boolean p1, p0, Lnet/veritran/VTUserApplicationSmart;->startedByPushNotification:Z

    .line 2879
    return-void
.end method

.method public wasStartedBySpecialLaunch(ZZLjava/util/Hashtable;)V
    .locals 0
    .param p1, "startedByPush"    # Z
    .param p2, "startedByGenericLaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2884
    .local p3, "genericLaunchParameters":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-boolean p1, p0, Lnet/veritran/VTUserApplicationSmart;->startedByPushNotification:Z

    .line 2885
    iput-boolean p2, p0, Lnet/veritran/VTUserApplicationSmart;->startedByGenericLaunch:Z

    .line 2886
    iput-object p3, p0, Lnet/veritran/VTUserApplicationSmart;->genericLaunchParameters:Ljava/util/Hashtable;

    .line 2887
    return-void
.end method
