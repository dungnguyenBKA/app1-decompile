.class final Lcom/google/android/gms/common/internal/b$g;
.super Lcom/google/android/gms/internal/common/zzi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/internal/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/common/zzi;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static a(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/b;->zzc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b$g;->a(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/b$h;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->b()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->d()V

    :cond_0
    return-void

    .line 6
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->enableLocalFallback()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/b$h;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->b()V

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->d()V

    return-void

    .line 12
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_7

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/b;->zza(Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->zzb(Lcom/google/android/gms/common/internal/b;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->zzc(Lcom/google/android/gms/common/internal/b;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/common/internal/b;->zza(Lcom/google/android/gms/common/internal/b;ILandroid/os/IInterface;)V

    return-void

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->zzd(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->zzd(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_6
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/b;->zzb:Lcom/google/android/gms/common/internal/b$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/b$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/b;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_7
    if-ne v0, v3, :cond_9

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->zzd(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->zzd(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_1

    .line 23
    :cond_8
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/b;->zzb:Lcom/google/android/gms/common/internal/b$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/b$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/b;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_9
    if-ne v0, v5, :cond_b

    .line 26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_a

    move-object v6, v0

    check-cast v6, Landroid/app/PendingIntent;

    .line 27
    :cond_a
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/b;->zzb:Lcom/google/android/gms/common/internal/b$c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/b$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/b;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_b
    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {v0, v3, v6}, Lcom/google/android/gms/common/internal/b;->zza(Lcom/google/android/gms/common/internal/b;ILandroid/os/IInterface;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->zze(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/internal/b$a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->zze(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/internal/b$a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/b$a;->onConnectionSuspended(I)V

    .line 33
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/b;->onConnectionSuspended(I)V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-static {p1, v3, v2, v6}, Lcom/google/android/gms/common/internal/b;->zza(Lcom/google/android/gms/common/internal/b;IILandroid/os/IInterface;)Z

    return-void

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$g;->a:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b;->isConnected()Z

    move-result v0

    if-nez v0, :cond_e

    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/b$h;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->b()V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->d()V

    return-void

    .line 39
    :cond_e
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b$g;->a(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/b$h;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/b$h;->c()V

    return-void

    .line 42
    :cond_f
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2d

    const-string v1, "Don\'t know how to handle message: "

    invoke-static {v0, v1, p1}, Lic;->C(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
