.class final Lcom/google/android/gms/stats/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/google/android/gms/stats/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/stats/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/stats/b;->b:Lcom/google/android/gms/stats/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/stats/b;->b:Lcom/google/android/gms/stats/a;

    invoke-static {v0}, Lcom/google/android/gms/stats/a;->f(Lcom/google/android/gms/stats/a;)V

    return-void
.end method
