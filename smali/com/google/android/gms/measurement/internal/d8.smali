.class final Lcom/google/android/gms/measurement/internal/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/b9;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/b9;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d8;->b:Lcom/google/android/gms/measurement/internal/b9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/d8;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->o()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d8;->b:Lcom/google/android/gms/measurement/internal/b9;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d8;->c:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b9;->n(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d8;->b:Lcom/google/android/gms/measurement/internal/b9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->j()V

    return-void
.end method
