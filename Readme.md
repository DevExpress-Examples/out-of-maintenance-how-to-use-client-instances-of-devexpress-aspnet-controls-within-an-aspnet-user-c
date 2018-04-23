# How to use client instances of DevExpress ASP.NET controls within an ASP.NET User Control


<p>Imagine we have an ASP.NET User Control that contains several DevExpress ASP.NET controls inside it. One of these controls should be accessible on the client side through a ClientInstanceName property value within JavaScript code. Further, it is necessary to create multiple User Control instances as well. After that, we'll find out if any instance of this control has the same value of the ClientInstanceName property across all the User Control instances. As a result, we will always have the last control instance using the ClientInstanceName property across all the User Control instances. There are several ways to avoid this issue. First, we can use the ClientID property instead of the ClientInstanceName property in JavaScript code. Second, we can wrap the ClientInstanceName properties of the required controls into User Control properties and assign different values explicitly for each User Control instance. Thus, in the both cases we have unique identities for each control on the client side no matter to what User Control instance they belong.</p><br />
<p>Additional information about client-side functionality is available here: <a href="http://documentation.devexpress.com/#AspNet/CustomDocument6908"><u>Client-Side functionality of DevExpress ASP.NET controls</u></a></p>

<br/>


