.class final Lcom/google/android/gms/measurement/internal/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/l5;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/j4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/l5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i4;->c:Lcom/google/android/gms/measurement/internal/j4;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i4;->b:Lcom/google/android/gms/measurement/internal/l5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i4;->c:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i4;->b:Lcom/google/android/gms/measurement/internal/l5;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/j4;->s(Lcom/google/android/gms/measurement/internal/j4;Lcom/google/android/gms/measurement/internal/l5;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i4;->c:Lcom/google/android/gms/measurement/internal/j4;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i4;->b:Lcom/google/android/gms/measurement/internal/l5;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/l5;->g:Lcom/google/android/gms/internal/measurement/zzy;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/j4;->w(Lcom/google/android/gms/internal/measurement/zzy;)V

    return-void
.end method
