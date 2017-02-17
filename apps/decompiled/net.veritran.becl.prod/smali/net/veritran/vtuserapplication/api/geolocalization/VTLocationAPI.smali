.class public Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;
.super Ljava/lang/Object;


# static fields
.field public static final ERR_GENERIC:Ljava/lang/String; = "001"

.field public static final ERR_INVALID_ACCURACY:Ljava/lang/String; = "011"

.field public static final ERR_INVALID_TIMEOUT:Ljava/lang/String; = "010"

.field public static final ERR_TIMEOUT:Ljava/lang/String; = "999"

.field public static final TAG:Ljava/lang/String; = "VTLocationAPI"

.field private static a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process()V
    .locals 7

    const/16 v6, 0x70

    const/4 v1, 0x1

    const-string v0, "VTLocationAPI"

    const-string v2, "process"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v2

    const/16 v0, 0x6f

    :try_start_0
    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    const/16 v0, 0x6e

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->getRegister(I)Lnet/veritran/vtuserapplication/core/elements/TokenElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/core/elements/TokenElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/16 v0, 0x70

    const-string v1, "000"

    invoke-virtual {v2, v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "VTLocationAPI"

    const-string v1, "singleQuery"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    check-cast v0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->setSingleQuery(Z)V
    :try_end_0
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    :try_start_2
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v3, 0xc7

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v3

    :try_start_3
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v4, 0xc6

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    check-cast v0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->setUpdateView(Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getGeoLocalizationLibraryImplementation()Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;

    move-result-object v0

    sget-object v4, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v0, v4}, Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;->addListener(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;)V

    invoke-interface {v0, v1, v3}, Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;->singleQuery(II)V
    :try_end_3
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "VTLocationAPI"

    const-string v1, "Catched exception empty (fortify)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, "010"

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_2
    move-exception v0

    const-string v1, "VTLocationAPI"

    const-string v2, "throw runtimeException"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    :try_start_5
    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, "011"

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    const-string v0, "001"

    invoke-virtual {v2, v6, v0}, Lnet/veritran/vtuserapplication/model/Model;->addInternalRegister(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_6
    const-string v0, "VTLocationAPI"

    const-string v3, "multipleQuery"

    invoke-static {v0, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    check-cast v0, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListenerImpl;->setSingleQuery(Z)V
    :try_end_6
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v3, 0xc4

    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v3

    :try_start_8
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v4, 0xc7

    invoke-virtual {v0, v4}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-result v4

    :try_start_9
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    const/16 v5, 0xc5

    invoke-virtual {v0, v5}, Lnet/veritran/vtuserapplication/model/Model;->getSafeRegisterValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result v0

    :goto_2
    :try_start_a
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getGeoLocalizationLibraryImplementation()Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;

    move-result-object v1

    sget-object v5, Lnet/veritran/vtuserapplication/api/geolocalization/VTLocationAPI;->a:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v1, v5}, Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;->addListener(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;)V

    invoke-interface {v1, v3, v0, v4}, Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;->multipleQuery(III)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, "010"

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v0, Lnet/veritran/callapi/exception/VTCallAPIException;

    const-string v1, "011"

    invoke-direct {v0, v1}, Lnet/veritran/callapi/exception/VTCallAPIException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_7
    move-exception v0

    const-string v0, "VTLocationAPI"

    const-string v5, "Catched exception empty (fortify)"

    invoke-static {v0, v5}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lnet/veritran/callapi/exception/VTCallAPIException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
