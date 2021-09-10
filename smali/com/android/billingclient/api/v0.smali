.class final Lcom/android/billingclient/api/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/b;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/v0;->b:Lcom/android/billingclient/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/v0;->b:Lcom/android/billingclient/api/b;

    sget-object v1, Lcom/android/billingclient/api/a0;->o:Lcom/android/billingclient/api/g;

    invoke-interface {v0, v1}, Lcom/android/billingclient/api/b;->b(Lcom/android/billingclient/api/g;)V

    return-void
.end method
