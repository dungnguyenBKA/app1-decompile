.class final Lcom/google/android/gms/measurement/internal/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/zzas;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w4;->d:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w4;->b:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/w4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w4;->d:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->o()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w4;->d:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->b0()Lcom/google/android/gms/measurement/internal/q6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->g()V

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
