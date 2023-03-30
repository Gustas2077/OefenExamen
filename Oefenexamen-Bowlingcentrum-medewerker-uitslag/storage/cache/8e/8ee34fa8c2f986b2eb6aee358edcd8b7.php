<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* layouts/navbar.twig */
class __TwigTemplate_34cfb90e04d2a95f04c712885f6372a9 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">
\t<div class=\"container-fluid\">
\t  <a class=\"navbar-brand\" href=\"#\">Bowlingcentrum</a>
\t  <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
\t\t<span class=\"navbar-toggler-icon\"></span>
\t  </button>
\t  <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">
\t\t<div class=\"navbar-nav\">
\t\t  <a class=\"nav-link active\" aria-current=\"page\" href=\"";
        // line 9
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["globals"] ?? null), "urlRoot", [], "any", false, false, false, 9), "html", null, true);
        echo "/\">Home</a>
\t\t  <a class=\"nav-link\" href=\"";
        // line 10
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["globals"] ?? null), "urlRoot", [], "any", false, false, false, 10), "html", null, true);
        echo "/result\">Uitslagen</a>
\t\t  <a class=\"nav-link\" href=\"";
        // line 11
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["globals"] ?? null), "urlRoot", [], "any", false, false, false, 11), "html", null, true);
        echo "/persons\">Personen</a>
\t\t</div>
\t  </div>
\t</div>
  </nav>
";
    }

    public function getTemplateName()
    {
        return "layouts/navbar.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  55 => 11,  51 => 10,  47 => 9,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "layouts/navbar.twig", "C:\\Users\\turki\\Oefenexamen-Bowlingcentrum-medewerker-uitslag\\app\\views\\layouts\\navbar.twig");
    }
}
