.class final Lcom/android/billingclient/api/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic b:Lcom/android/billingclient/api/n$a;

.field private final synthetic c:Lcom/android/billingclient/api/u;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/u;Lcom/android/billingclient/api/n$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/t;->c:Lcom/android/billingclient/api/u;

    iput-object p2, p0, Lcom/android/billingclient/api/t;->b:Lcom/android/billingclient/api/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/t;->c:Lcom/android/billingclient/api/u;

    iget-object v0, v0, Lcom/android/billingclient/api/u;->d:Lcom/android/billingclient/api/p;

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/g;->c()Lcom/android/billingclient/api/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/t;->b:Lcom/android/billingclient/api/n$a;

    .line 3
    invoke-virtual {v2}, Lcom/android/billingclient/api/n$a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->c(I)Lcom/android/billingclient/api/g$a;

    iget-object v2, p0, Lcom/android/billingclient/api/t;->b:Lcom/android/billingclient/api/n$a;

    .line 4
    invoke-virtual {v2}, Lcom/android/billingclient/api/n$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/g$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;

    .line 5
    invoke-virtual {v1}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/t;->b:Lcom/android/billingclient/api/n$a;

    .line 6
    invoke-virtual {v2}, Lcom/android/billingclient/api/n$a;->a()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method
