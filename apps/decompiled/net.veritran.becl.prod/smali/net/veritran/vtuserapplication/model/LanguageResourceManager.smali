.class public Lnet/veritran/vtuserapplication/model/LanguageResourceManager;
.super Ljava/lang/Object;


# static fields
.field public static final LANG_RES_BBS0001:Ljava/lang/String; = "bbs0001"

.field public static final LANG_RES_BBS0002:Ljava/lang/String; = "bbs0002"

.field public static final LANG_RES_BBS0003:Ljava/lang/String; = "bbs0003"

.field public static final LANG_RES_BBS0004:Ljava/lang/String; = "bbs0004"

.field public static final LANG_RES_CHK0001:Ljava/lang/String; = "chk0001"

.field public static final LANG_RES_CHK0002:Ljava/lang/String; = "chk0002"

.field public static final LANG_RES_CHK0003:Ljava/lang/String; = "chk0003"

.field public static final LANG_RES_CHK0004:Ljava/lang/String; = "chk0004"

.field public static final LANG_RES_CHK0005:Ljava/lang/String; = "chk0005"

.field public static final LANG_RES_CHK0006:Ljava/lang/String; = "chk0006"

.field public static final LANG_RES_CHK0007:Ljava/lang/String; = "chk0007"

.field public static final LANG_RES_CHK0008:Ljava/lang/String; = "chk0008"

.field public static final LANG_RES_DPD0001:Ljava/lang/String; = "dpd0001"

.field public static final LANG_RES_DPD0002:Ljava/lang/String; = "dpd0002"

.field public static final LANG_RES_DTF0001:Ljava/lang/String; = "dtf0001"

.field public static final LANG_RES_DTF0002:Ljava/lang/String; = "dtf0002"

.field public static final LANG_RES_ERR0001:Ljava/lang/String; = "err0001"

.field public static final LANG_RES_ERR0002:Ljava/lang/String; = "err0002"

.field public static final LANG_RES_ERR0003:Ljava/lang/String; = "err0003"

.field public static final LANG_RES_ERR0004:Ljava/lang/String; = "err0004"

.field public static final LANG_RES_ERR0005:Ljava/lang/String; = "err0005"

.field public static final LANG_RES_ERR0006:Ljava/lang/String; = "err0006"

.field public static final LANG_RES_ERR0007:Ljava/lang/String; = "err0007"

.field public static final LANG_RES_ERR0008:Ljava/lang/String; = "err0008"

.field public static final LANG_RES_ERR0009:Ljava/lang/String; = "err0009"

.field public static final LANG_RES_ERR0010:Ljava/lang/String; = "err0010"

.field public static final LANG_RES_ERR0011:Ljava/lang/String; = "err0011"

.field public static final LANG_RES_ERR0012:Ljava/lang/String; = "err0012"

.field public static final LANG_RES_ERR0014:Ljava/lang/String; = "err0014"

.field public static final LANG_RES_FRM0001:Ljava/lang/String; = "frm0001"

.field public static final LANG_RES_FRM0002:Ljava/lang/String; = "frm0002"

.field public static final LANG_RES_RDB0001:Ljava/lang/String; = "rdb0001"

.field public static final LANG_RES_RDB0002:Ljava/lang/String; = "rdb0002"

.field public static final LANG_RES_RDB0003:Ljava/lang/String; = "rdb0003"

.field public static final LANG_RES_RDB0004:Ljava/lang/String; = "rdb0004"

.field public static final LANG_RES_SYS0001:Ljava/lang/String; = "sys0001"

.field public static final LANG_RES_SYS0002:Ljava/lang/String; = "sys0002"

.field public static final LANG_RES_SYS0003:Ljava/lang/String; = "sys0003"

.field public static final LANG_RES_SYS0004:Ljava/lang/String; = "sys0004"

.field public static final LANG_RES_SYS0005:Ljava/lang/String; = "sys0005"

.field public static final LANG_RES_SYS0006:Ljava/lang/String; = "sys0006"

.field public static final LANG_RES_SYS0007:Ljava/lang/String; = "sys0007"

.field public static final LANG_RES_SYS0008:Ljava/lang/String; = "sys0008"

.field public static final LANG_RES_SYS0009:Ljava/lang/String; = "sys0009"

.field public static final LANG_RES_SYS0010:Ljava/lang/String; = "sys0010"

.field public static final LANG_RES_SYS0011:Ljava/lang/String; = "sys0011"

.field public static final LANG_RES_SYS0012:Ljava/lang/String; = "sys0012"

.field public static final LANG_RES_SYS0013:Ljava/lang/String; = "sys0013"

.field public static final LANG_RES_SYS0014:Ljava/lang/String; = "sys0014"

.field public static final LANG_RES_SYS0015:Ljava/lang/String; = "sys0015"

.field public static final LANG_RES_SYS0016:Ljava/lang/String; = "sys0016"

.field public static final LANG_RES_SYS0017:Ljava/lang/String; = "sys0017"

.field private static a:Ljava/util/Vector;

.field public static currentLanguageResource:Lnet/veritran/vtuserapplication/model/LanguageResourceInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->a:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->currentLanguageResource:Lnet/veritran/vtuserapplication/model/LanguageResourceInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lnet/veritran/vtuserapplication/model/LanguageChangeListener;)V
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static getResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->currentLanguageResource:Lnet/veritran/vtuserapplication/model/LanguageResourceInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->setCurrentLanguage(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->currentLanguageResource:Lnet/veritran/vtuserapplication/model/LanguageResourceInterface;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/model/LanguageResourceInterface;->getResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentLanguage(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lnet/veritran/vtuserapplication/model/LanguageResourcesCustomized;

    invoke-direct {v0, p0}, Lnet/veritran/vtuserapplication/model/LanguageResourcesCustomized;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->currentLanguageResource:Lnet/veritran/vtuserapplication/model/LanguageResourceInterface;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lnet/veritran/vtuserapplication/model/LanguageResourceManager;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/model/LanguageChangeListener;

    invoke-interface {v0, p0}, Lnet/veritran/vtuserapplication/model/LanguageChangeListener;->notifyCurrentLanguageChanged(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
