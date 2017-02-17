.class public interface abstract Lnet/veritran/vtuserapplication/model/ApplicationHelperInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applicationUpdate()V
.end method

.method public abstract dial(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract errorForInvalidApplication(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract exitApp()V
.end method

.method public abstract getApplicationBrand()Ljava/lang/String;
.end method

.method public abstract getApplicationDefaultEncoding()Ljava/lang/String;
.end method

.method public abstract getApplicationModel()Ljava/lang/String;
.end method

.method public abstract getApplicationName()Ljava/lang/String;
.end method

.method public abstract getApplicationPlatform()Ljava/lang/String;
.end method

.method public abstract getApplicationSerialNumber()Ljava/lang/String;
.end method

.method public abstract getApplicationUniqueId()Ljava/lang/String;
.end method

.method public abstract getAvailableThemes()[Ljava/lang/String;
.end method

.method public abstract getClientDecimalNumberSeparator()Ljava/lang/String;
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientThousandNumberSeparator()Ljava/lang/String;
.end method

.method public abstract getDefaultLanguage()Ljava/lang/String;
.end method

.method public abstract getDeviceBrand()Ljava/lang/String;
.end method

.method public abstract getDeviceInformation()Ljava/lang/String;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getDiffieHellmanG()Ljava/lang/String;
.end method

.method public abstract getDiffieHellmanP()Ljava/lang/String;
.end method

.method public abstract getDynKey()Ljava/lang/String;
.end method

.method public abstract getProduct()Ljava/lang/String;
.end method

.method public abstract getPushNotificationServiceName()Ljava/lang/String;
.end method

.method public abstract getSoftwareVersion()I
.end method

.method public abstract getSupportedEncodings()[Ljava/lang/String;
.end method

.method public abstract getUserAgentString()Ljava/lang/String;
.end method

.method public abstract getVascoStaticVector()Ljava/lang/String;
.end method

.method public abstract hasLocationSupport()Z
.end method

.method public abstract hasPINFixed()Z
.end method

.method public abstract isLanguageSupported(Ljava/lang/String;)Z
.end method

.method public abstract isVascoActive()Z
.end method

.method public abstract showNumericPassword()Z
.end method

.method public abstract usesRepoProduct()Z
.end method

.method public abstract warnForInvalidApplication(Ljava/lang/String;I)V
.end method
