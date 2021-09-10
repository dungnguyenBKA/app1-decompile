.class final Lcom/google/android/gms/measurement/internal/n7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic e:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/n7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/n7;->c:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/n7;->d:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/z7;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z7;->z(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v2, "null reference"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/n7;->c:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/n7;->d:Lcom/google/android/gms/measurement/internal/zzas;

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/n7;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 7
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/z7;->J(Lcom/google/android/gms/measurement/internal/y2;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n7;->e:Lcom/google/android/gms/measurement/internal/z7;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z7;->A(Lcom/google/android/gms/measurement/internal/z7;)V

    return-void
.end method
