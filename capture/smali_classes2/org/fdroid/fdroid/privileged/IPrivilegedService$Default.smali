.class public Lorg/fdroid/fdroid/privileged/IPrivilegedService$Default;
.super Ljava/lang/Object;
.source "IPrivilegedService.java"

# interfaces
.implements Lorg/fdroid/fdroid/privileged/IPrivilegedService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/privileged/IPrivilegedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public deletePackage(Ljava/lang/String;ILorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasPrivilegedPermissions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public installPackage(Landroid/net/Uri;ILjava/lang/String;Lorg/fdroid/fdroid/privileged/IPrivilegedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
