.class public abstract Lnet/veritran/vtuserapplication/model/Setup;
.super Ljava/lang/Object;


# static fields
.field private static A:Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface; = null

.field private static B:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface; = null

.field private static C:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface; = null

.field private static D:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lnet/veritran/vtuserapplication/tracking/VTTrackingInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BARCODE_GENERATION:I = 0x4000

.field public static final FLAG_STATE_CALCULATOR:I = 0x800

.field public static final FLAG_STATE_CHECKBOXSTATE:I = 0x4

.field public static final FLAG_STATE_DIALER:I = 0x100

.field public static final FLAG_STATE_FORMFIELDSTATE:I = 0x2000

.field public static final FLAG_STATE_IMAGEALIASSTATE:I = 0x40

.field public static final FLAG_STATE_LOCATION:I = 0x1000

.field public static final FLAG_STATE_MAPVIEWER:I = 0x200

.field public static final FLAG_STATE_RADIOBUTTONSTATE:I = 0x8

.field public static final FLAG_STATE_SENDCOMPLETIONSTATE:I = 0x20

.field public static final FLAG_STATE_SMS:I = 0x8000

.field public static final FLAG_STATE_SOFTTOKEN:I = 0x80

.field public static final FLAG_STATE_XBRANCHSTATE:I = 0x1

.field public static final FLAG_STATE_XFORMSTATE:I = 0x2

.field public static final FLAG_STATE_XLISTSTATE:I = 0x10

.field public static final FLAG_VASCO_DP:I = 0x400

.field public static final STATES_INCLUDED:I = 0xffff

.field private static a:Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

.field private static b:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

.field private static c:Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

.field private static d:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

.field private static e:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

.field private static f:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

.field private static g:Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;

.field private static h:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

.field private static i:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

.field private static j:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

.field private static k:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

.field private static l:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

.field private static m:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

.field private static n:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

.field private static o:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

.field private static p:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

.field private static q:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

.field private static r:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

.field private static s:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

.field private static t:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

.field private static u:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

.field private static v:Lnet/veritran/vtuserapplication/processes/VTServiceInterface;

.field private static w:Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;

.field private static x:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

.field private static y:Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

.field private static z:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/Setup;->D:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomAPIImplementation(Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;)V
    .locals 0

    invoke-static {p0}, Lnet/veritran/callapi/VTCustomAPIManager;->registerCustomAPI(Lnet/veritran/vtuserapplication/api/custom/CustomAPIInterface;)V

    return-void
.end method

.method public static addVTTrackingImplementation(Ljava/lang/String;Lnet/veritran/vtuserapplication/tracking/VTTrackingInterface;)V
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "ShareLibraryImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAlfaKeySetImplementation()Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->p:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "AlfaKeySet not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->p:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

    return-object v0
.end method

.method public static getApplicationHelper()Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->e:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "ApplicationHelper not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->e:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    return-object v0
.end method

.method public static getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->f:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "ApplicationSmartImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->f:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    return-object v0
.end method

.method public static getBarCodeImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->k:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTBarCode not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->k:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-object v0
.end method

.method public static getCardReaderLibraryImplementation()Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->z:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "CardReader Library not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->z:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    return-object v0
.end method

.method public static getConnectionManager()Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->c:Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "ConnectionManager not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->c:Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    return-object v0
.end method

.method public static getFaceRecognitionLibraryImplementation()Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->B:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "FaceRecognitionLibraryImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->B:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    return-object v0
.end method

.method public static getFingerprintImplementation()Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->A:Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "FingerprintImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->A:Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;

    return-object v0
.end method

.method public static getGeoLocalizationLibraryImplementation()Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->w:Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "GeoLocalizationLibrary not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->w:Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;

    return-object v0
.end method

.method public static getHCEImplementation()Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->o:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "HCEImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->o:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    return-object v0
.end method

.method public static getMobileCardReaderImplementationImplementation()Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->n:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "MobileCardReaderImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->n:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

    return-object v0
.end method

.method public static getNfcLibraryImplementation()Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->x:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "NfcLibraryImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->x:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    return-object v0
.end method

.method public static getNumKeySetImplementation()Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->q:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "NumKeySet not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->q:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

    return-object v0
.end method

.method public static getPersistenceManager()Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->g:Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "PersistenceManager not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->g:Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;

    return-object v0
.end method

.method public static getPhotoImplementation()Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->C:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "PhotoImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->C:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    return-object v0
.end method

.method public static getPushLibraryImplementation()Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->s:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "PushLibrary not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->s:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    return-object v0
.end method

.method public static getQrLibraryImplementation()Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->t:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "QrLibrary not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->t:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    return-object v0
.end method

.method public static getResourcesLoader()Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->a:Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "ResourceLoader not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->a:Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    return-object v0
.end method

.method public static getSAXParserImplementation()Lnet/veritran/vtuserapplication/model/SAXParserInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->u:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "SAXParser not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->u:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    return-object v0
.end method

.method public static getSMSStateImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->h:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "SMSStateInterface not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->h:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-object v0
.end method

.method public static getSecurityLibrary()Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->d:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "SecurityLibrary not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->d:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    return-object v0
.end method

.method public static getShareLibraryImplementation()Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->y:Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "ShareLibraryImplementation not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->y:Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

    return-object v0
.end method

.method public static getUILibrary()Lnet/veritran/vtuserapplication/ui/UILibraryInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->b:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "UILibrary not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->b:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    return-object v0
.end method

.method public static getVTDialImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->j:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTDial not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->j:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-object v0
.end method

.method public static getVTLocationStateImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->l:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTLocationState not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->l:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-object v0
.end method

.method public static getVTLogger()Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->r:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTLogger not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->r:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    return-object v0
.end method

.method public static getVTMapViewerImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->i:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTMapViewer not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->i:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-object v0
.end method

.method public static getVTServiceImplementation()Lnet/veritran/vtuserapplication/processes/VTServiceInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->v:Lnet/veritran/vtuserapplication/processes/VTServiceInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTService not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->v:Lnet/veritran/vtuserapplication/processes/VTServiceInterface;

    return-object v0
.end method

.method public static getVTTrackingImplementation(Ljava/lang/String;)Lnet/veritran/vtuserapplication/tracking/VTTrackingInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/tracking/VTTrackingInterface;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVTVascoStateImplementation()Lnet/veritran/vtuserapplication/states/VTApiStateInterface;
    .locals 2

    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->m:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    if-nez v0, :cond_0

    new-instance v0, Lnet/veritran/vtuserapplication/model/InvalidSetupException;

    const-string v1, "VTVascoState not configured"

    invoke-direct {v0, v1}, Lnet/veritran/vtuserapplication/model/InvalidSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/Setup;->m:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-object v0
.end method

.method public static setAlfaKeySetImplementation(Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->p:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

    return-void
.end method

.method public static setApplicationHelper(Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->e:Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;

    return-void
.end method

.method public static setApplicationSmartImplementation(Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->f:Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    return-void
.end method

.method public static setBarCodeImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->k:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-void
.end method

.method public static setCardReaderLibraryImplementation(Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->z:Lnet/veritran/vtuserapplication/api/cardreader/CardReaderLibraryInterface;

    return-void
.end method

.method public static setConnectionManager(Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->c:Lnet/veritran/vtuserapplication/comm/ConnectionManagerInterface;

    return-void
.end method

.method public static setFaceRecognitionLibraryImplementation(Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->B:Lnet/veritran/vtuserapplication/api/facerecognition/FaceRecognitionLibraryInterface;

    return-void
.end method

.method public static setFingerprintImplementation(Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->A:Lnet/veritran/vtuserapplication/api/fingerprint/VTAPIFingerprintInterface;

    return-void
.end method

.method public static setGeoLocalizationLibraryImplementation(Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->w:Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;

    return-void
.end method

.method public static setHCEImplementation(Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->o:Lnet/veritran/vtuserapplication/api/hce/VTAPIHCEInterface;

    return-void
.end method

.method public static setMobileCardReaderImplementation(Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->n:Lnet/veritran/vtuserapplication/api/mobilecardreader/VTAPIMobileCardReaderInterface;

    return-void
.end method

.method public static setNfcLibraryImplementation(Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->x:Lnet/veritran/vtuserapplication/api/nfc/NfcLibraryInterface;

    return-void
.end method

.method public static setNumKeySetImplementation(Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->q:Lnet/veritran/vtuserapplication/ui/maskhandler/KeySet;

    return-void
.end method

.method public static setPersistenceManager(Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->g:Lnet/veritran/vtuserapplication/persistence/RepositoryFactoryInterface;

    return-void
.end method

.method public static setPhotoLibraryImplementation(Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->C:Lnet/veritran/vtuserapplication/api/photo/VTAPIPhotoInterface;

    return-void
.end method

.method public static setPushLibraryImplementation(Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->s:Lnet/veritran/vtuserapplication/api/push/PushLibraryInterface;

    return-void
.end method

.method public static setQrLibraryImplementation(Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->t:Lnet/veritran/vtuserapplication/api/qr/QrLibraryInterface;

    return-void
.end method

.method public static setResourcesLoader(Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->a:Lnet/veritran/vtuserapplication/utils/ResourcesLoaderInterface;

    return-void
.end method

.method public static setSAXParserImplementation(Lnet/veritran/vtuserapplication/model/SAXParserInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->u:Lnet/veritran/vtuserapplication/model/SAXParserInterface;

    return-void
.end method

.method public static setSMSStateImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->h:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-void
.end method

.method public static setSecurityLibrary(Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->d:Lnet/veritran/vtuserapplication/utils/security/SecurityLibraryInterface;

    return-void
.end method

.method public static setShareLibraryImplementation(Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->y:Lnet/veritran/vtuserapplication/api/share/ShareLibraryInterface;

    return-void
.end method

.method public static setUILibrary(Lnet/veritran/vtuserapplication/ui/UILibraryInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->b:Lnet/veritran/vtuserapplication/ui/UILibraryInterface;

    return-void
.end method

.method public static setVTDialImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->j:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-void
.end method

.method public static setVTLocationStateImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->l:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-void
.end method

.method public static setVTLogger(Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/utils/VTLog;->logger:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->r:Lnet/veritran/vtuserapplication/utils/VTLoggerInterface;

    return-void
.end method

.method public static setVTMapViewerImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->i:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-void
.end method

.method public static setVTServiceImplementation(Lnet/veritran/vtuserapplication/processes/VTServiceInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->v:Lnet/veritran/vtuserapplication/processes/VTServiceInterface;

    return-void
.end method

.method public static setVTVascoStateImplementation(Lnet/veritran/vtuserapplication/states/VTApiStateInterface;)V
    .locals 0

    sput-object p0, Lnet/veritran/vtuserapplication/model/Setup;->m:Lnet/veritran/vtuserapplication/states/VTApiStateInterface;

    return-void
.end method
