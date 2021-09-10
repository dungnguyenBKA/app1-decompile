.class final Lcom/google/android/gms/measurement/internal/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/measurement/internal/f9;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/c5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/c5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/c5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->o()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z4;->c:Lcom/google/android/gms/measurement/internal/c5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c5;->U(Lcom/google/android/gms/measurement/internal/c5;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->X()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i;->S(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
