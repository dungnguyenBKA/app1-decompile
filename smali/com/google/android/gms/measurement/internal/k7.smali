.class final Lcom/google/android/gms/measurement/internal/k7;
.super Lcom/google/android/gms/measurement/internal/l;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/z7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z7;Lcom/google/android/gms/measurement/internal/f5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k7;->e:Lcom/google/android/gms/measurement/internal/z7;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/f5;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k7;->e:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i3;->q()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g3;->a(Ljava/lang/String;)V

    return-void
.end method
