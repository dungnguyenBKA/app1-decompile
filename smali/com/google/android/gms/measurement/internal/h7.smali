.class final Lcom/google/android/gms/measurement/internal/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/h7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/h7;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h7;->d:Lcom/google/android/gms/measurement/internal/z7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z7;->z(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    const-string v1, "Failed to send default event parameters to service"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v3, "null reference"

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h7;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/h7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 5
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/y2;->t(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h7;->d:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
