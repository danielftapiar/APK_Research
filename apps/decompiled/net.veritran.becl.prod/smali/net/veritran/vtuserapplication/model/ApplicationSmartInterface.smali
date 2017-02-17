.class public interface abstract Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applicationNeedToUpdate()V
.end method

.method public varargs abstract checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z
.end method

.method public abstract checkPermissionManifest(Ljava/lang/String;)Z
.end method

.method public abstract cleanPersistentImages()V
.end method

.method public abstract closeMessage(Ljava/lang/String;)V
.end method

.method public abstract deleteConfigurationFromInternalStorage()V
.end method

.method public abstract downloadXMLConfigurationFromModel()V
.end method

.method public abstract getAllPreferencesKeys()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBadgeNumber()I
.end method

.method public abstract getBitmapForSize(Ljava/lang/String;II)Ljava/lang/Object;
.end method

.method public abstract getConnectionTimeout()I
.end method

.method public abstract getConstant(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomEncryptedRegistersFromConfiguration()[I
.end method

.method public abstract getGenericLaunchParameters()Ljava/util/Hashtable;
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
.end method

.method public abstract getGeoLocationLat()Ljava/lang/String;
.end method

.method public abstract getGeoLocationLong()Ljava/lang/String;
.end method

.method public abstract getGeoLocationTimestamp()Ljava/lang/String;
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProduct()Ljava/lang/String;
.end method

.method public abstract getReadOnlyProperties()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedConfigurationAppProperties(Ljava/lang/String;)Ljava/util/Hashtable;
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
.end method

.method public abstract getSerializedConfigurationLayouts(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract getSerializedConfigurationParameter(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract getSerializedConfigurationProcess(Ljava/lang/String;Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;
.end method

.method public abstract getSerializedConfigurationResponseCode(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract getSerializedConfigurationTheme(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract getSerializedViews(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract getStaticallyEncryptedRegistersFromConfiguration()[I
.end method

.method public abstract initializeSavedSessionImage(Ljava/lang/String;)V
.end method

.method public abstract isInternetConnectionAvailable()Z
.end method

.method public abstract noSessionTimedOut()V
.end method

.method public abstract processAction(Ljava/lang/String;)V
.end method

.method public abstract putFontBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
.end method

.method public abstract putSessionImage(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract putSessionImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
.end method

.method public abstract putSessionResourceBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
.end method

.method public abstract putSvgImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
.end method

.method public abstract removePreference(Ljava/lang/String;)V
.end method

.method public abstract restartApplication()V
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract serializeConfigurationAppProperties(Ljava/util/Hashtable;Ljava/lang/String;)Z
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
.end method

.method public abstract serializeConfigurationLayouts(Ljava/util/ArrayList;Ljava/lang/String;)Z
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
.end method

.method public abstract serializeConfigurationParameter(Ljava/util/ArrayList;Ljava/lang/String;)Z
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
.end method

.method public abstract serializeConfigurationProcess(Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationProcess;Ljava/lang/String;)Z
.end method

.method public abstract serializeConfigurationResponseCode(Ljava/util/ArrayList;Ljava/lang/String;)Z
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
.end method

.method public abstract serializeConfigurationTheme(Ljava/util/ArrayList;Ljava/lang/String;)Z
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
.end method

.method public abstract serializeConfigurationVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;Ljava/lang/String;)Z
.end method

.method public abstract serializeViews(Ljava/util/ArrayList;Ljava/lang/String;)Z
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
.end method

.method public abstract sessionTimedOut()V
.end method

.method public abstract setBadgeNumber(I)V
.end method

.method public abstract setGeoLocationLat(Ljava/lang/String;)V
.end method

.method public abstract setGeoLocationLong(Ljava/lang/String;)V
.end method

.method public abstract setGeoLocationTimestamp(Ljava/lang/String;)V
.end method

.method public abstract setPreference(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setProduct(Ljava/lang/String;)V
.end method

.method public abstract shouldLoadResources()Z
.end method

.method public abstract showApplicationError(I)V
.end method

.method public abstract showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
.end method

.method public abstract startedByGenericLaunch()Z
.end method

.method public abstract startedByPushNotification()Z
.end method

.method public abstract startingApplication()V
.end method

.method public abstract tryStartPushViewAlreadyStarted()V
.end method

.method public abstract updateApplication(Z)V
.end method

.method public abstract wasStartedByPushNotification(Z)V
.end method

.method public abstract wasStartedBySpecialLaunch(ZZLjava/util/Hashtable;)V
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
.end method
