.class final Lcom/google/android/gms/measurement/internal/t8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/c9;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/b9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/b9;Lcom/google/android/gms/measurement/internal/c9;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t8;->c:Lcom/google/android/gms/measurement/internal/b9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t8;->b:Lcom/google/android/gms/measurement/internal/c9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t8;->c:Lcom/google/android/gms/measurement/internal/b9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t8;->b:Lcom/google/android/gms/measurement/internal/c9;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/b9;->E(Lcom/google/android/gms/measurement/internal/b9;Lcom/google/android/gms/measurement/internal/c9;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t8;->c:Lcom/google/android/gms/measurement/internal/b9;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->T()V

    return-void
.end method
