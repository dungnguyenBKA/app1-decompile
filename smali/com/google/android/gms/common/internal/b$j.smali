.class public final Lcom/google/android/gms/common/internal/b$j;
.super Lcom/google/android/gms/common/internal/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private b:Lcom/google/android/gms/common/internal/b;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/i$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/internal/b$j;->c:I

    return-void
.end method


# virtual methods
.method public final O(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    iget v1, p0, Lcom/google/android/gms/common/internal/b$j;->c:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/b;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    return-void
.end method

.method public final P(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null reference"

    .line 2
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/b;->zza(Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/zzc;)V

    .line 4
    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzc;->b:Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    iget v1, p0, Lcom/google/android/gms/common/internal/b$j;->c:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/b;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b$j;->b:Lcom/google/android/gms/common/internal/b;

    return-void
.end method
