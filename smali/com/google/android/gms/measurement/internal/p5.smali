.class final Lcom/google/android/gms/measurement/internal/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/l6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/l6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p5;->b:Lcom/google/android/gms/measurement/internal/l6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p5;->b:Lcom/google/android/gms/measurement/internal/l6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l6;->n:Lcom/google/android/gms/measurement/internal/n9;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n9;->a()V

    return-void
.end method
