.class final Lcom/android/billingclient/api/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:I

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/android/billingclient/api/q0;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/q0;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/s0;->d:Lcom/android/billingclient/api/q0;

    iput p2, p0, Lcom/android/billingclient/api/s0;->b:I

    iput-object p3, p0, Lcom/android/billingclient/api/s0;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/s0;->d:Lcom/android/billingclient/api/q0;

    iget-object v0, v0, Lcom/android/billingclient/api/q0;->c:Lcom/android/billingclient/api/b;

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/s0;->b:I

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    iget-object v2, p0, Lcom/android/billingclient/api/s0;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 5
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Lcom/android/billingclient/api/b;->b(Lcom/android/billingclient/api/g;)V

    return-void
.end method
