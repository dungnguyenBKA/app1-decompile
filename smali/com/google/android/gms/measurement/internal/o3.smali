.class final Lcom/google/android/gms/measurement/internal/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/measurement/internal/p3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o3;->c:Lcom/google/android/gms/measurement/internal/p3;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/o3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o3;->c:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/p3;->c(Lcom/google/android/gms/measurement/internal/p3;)Lcom/google/android/gms/measurement/internal/b9;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b9;->C()V

    return-void
.end method
