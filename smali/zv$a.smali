.class public Lzv$a;
.super Lcom/google/android/gms/internal/common/zza;
.source "SourceFile"

# interfaces
.implements Lzv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzv$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zza;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static O(Landroid/os/IBinder;)Lzv;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lzv;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lzv;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lzv$a$a;

    invoke-direct {v0, p0}, Lzv$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
