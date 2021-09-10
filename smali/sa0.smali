.class public Lsa0;
.super Lqa0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lqa0$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lqa0;-><init>(Lqa0$b;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lqa0;->b:Lqa0$b;

    check-cast p1, Lva0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lva0;->b(Lorg/json/JSONObject;)V

    return-object v0
.end method
